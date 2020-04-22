if instance_exists(oObjective) {
	if distance_to_point(oObjective.x, oObjective.y) > 300 {
		//Move to objective
		var speedX = lengthdir_x(Speed, Direction);
		var speedY = lengthdir_y(Speed, Direction);
		
		x += speedX;
		y += speedY;
	}
}
