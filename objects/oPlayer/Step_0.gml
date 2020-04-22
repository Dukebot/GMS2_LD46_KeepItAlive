if (global.pause) exit;

if not canMove {
	moveCount--;
	if moveCount < 0 {
		moveCount = moveCooldown;
		canMove = true;
	}
	exit;
}

//Read Input
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);
//spacePressed = keyboard_check_pressed(vk_space);

//Movement
{
	var directionX = (right - left);
	var directionY = (down - up);
	
	if (directionX != 0 or directionY != 0) {
		Direction = getMovementDirection(directionX, directionY);
		Speed += acceleration;
	} else {
		Speed = 0;
	}
	Speed = clamp(Speed, 0, maxSpeed);
	
	var speedX = lengthdir_x(Speed, Direction);
	var speedY = lengthdir_y(Speed, Direction);
	
	if place_meeting(x + speedX, y, oObjective) {
		speedX = 0;	
	}
	
	if place_meeting(x, y + speedY, oObjective) {
		speedY = 0;	
	}
	
	x += speedX;
	y += speedY;
}

//Stay in room
if (x < sprite_width/2)              {x = sprite_width/2;}
if (x > room_width-sprite_width/2)   {x = room_width-sprite_width/2;}
if (y < sprite_height/2)             {y = sprite_height/2;}
if (y > room_height-sprite_height/2) {y = room_height-sprite_height/2;}