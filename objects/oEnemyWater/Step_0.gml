if global.pause exit;

var speedX = lengthdir_x(Speed, Direction);	
var speedY = lengthdir_y(Speed, Direction);

if (canBounce) {
	var size = sprite_width/2;
	var yTop = 0; //Margin for the score and lives

	//Bounce against the edges of the screen
	if (x + size > room_width) or (x - size < 0) {
		speedX = -speedX * speedIncFactor;
		damageWater(self, 1);
	}
	if (y + size > room_height) or (y - size < yTop) {
		speedY = -speedY * speedIncFactor;
		damageWater(self, 1);
	}
	
	//Bounce against the player
	if instance_exists(oPlayer) {
		if place_meeting(x + speedX, y + speedY, oPlayer) {			
			var playerSpeedX = lengthdir_x(oPlayer.Speed, oPlayer.Direction);
			var playerSpeedY = lengthdir_y(oPlayer.Speed, oPlayer.Direction);
			
			//Check if we need to change direction
			if place_meeting(x + speedX, y, oPlayer) {speedX = -speedX;}
			if place_meeting(x, y + speedY, oPlayer) {speedY = -speedY;}
			
			//Increase speed in the correct direction
			speedX = (speedX + playerSpeedX);
			speedY = (speedY + playerSpeedY);
			
			damageWater(self, 1);
			with (oPlayer) playerCollision();
		}
	}
}

x = x + speedX;
y = y + speedY;

// update speed and direction
Speed = point_distance(0, 0, speedX, speedY);
Direction = point_direction(0, 0, speedX, speedY);

image_angle = Direction;
image_angle -= 90;

//Set scale based on life remaining
var minScale = 0.5;
var _scale = minScale + (1 - minScale) * (hitPoints / maxHitPoints * scale);
setScale(_scale);