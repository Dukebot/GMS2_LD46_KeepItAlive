/// @description Shoot water
if instance_exists(oObjective) {
	var _direction = point_direction(x, y, oObjective.x, oObjective.y);
	var marginX = lengthdir_x(50, _direction);
	var marginY = lengthdir_y(50, _direction);
	instanceCreate(oEnemyWater, x + marginX, y + marginY, "Enemies");
}
alarm[0] = fireRate;