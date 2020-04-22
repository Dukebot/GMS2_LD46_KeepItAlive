if global.pause exit;

time++;
Score = time/60;

levelUpCount--;
if levelUpCount < 0 {
	levelUpCount = levelUpTime;
	
	level++;
	oEnemySpawner.spawnRate *= enemySpawnRateInc;
}