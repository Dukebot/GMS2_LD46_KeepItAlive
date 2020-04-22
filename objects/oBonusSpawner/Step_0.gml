if global.pause exit;

spawnCount--;
if spawnCount < 0 {
	spawnCount = spawnRate;
	
	var enemyTemp = instanceCreate(oWood);
	var enemySpawnMargin = sprite_get_width(enemyTemp.sprite_index)/2;
	instance_destroy(enemyTemp);
	
	//Choose spawn position
	var randomCorner = random(1);
	var enemySpawnX;
	var enemySpawnY;

	// calculate spawn point based on random corner spawn reference
	if (randomCorner < 0.25) {
		// spawn from left
		enemySpawnX = enemySpawnMargin;
		enemySpawnY = random_range(enemySpawnMargin, room_height-enemySpawnMargin);
	} 
	else if (randomCorner < 0.5) { 
		// spawn from top
		enemySpawnX = random_range(enemySpawnMargin, room_width-enemySpawnMargin);
		enemySpawnY = enemySpawnMargin;
	} 
	else if (randomCorner < 0.75) { 
		// spawn from right
		enemySpawnX = room_width-enemySpawnMargin;
		enemySpawnY = random_range(enemySpawnMargin,room_height-enemySpawnMargin);
	} 
	else { 
		// spawn from bot
		enemySpawnX = random_range(enemySpawnMargin,room_width-enemySpawnMargin);
		enemySpawnY = room_height-enemySpawnMargin;
	}

	// spawn a random enemy in a random corner
	instance_create_layer(enemySpawnX, enemySpawnY, "Enemies", oWood);
}