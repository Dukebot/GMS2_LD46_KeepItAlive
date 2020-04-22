global.pause = false;
global.debug = false;

global.playerMaxSpeed = 8;
global.playerAcceleration = 1;

global.objectiveHP = 50;
global.bonusPoints = 10;

global.levelUpTime = 10*60;
global.enemySpawnRateInc = 0.9;

global.waterSpawnRate = 2*60;
global.bonusSpawnRate = 10*60;

global.waterHP = 10;
global.waterSpeed = 2;
global.waterSpeedMultipliyer = 1.25;

ini_open("settings");
{
	global.hScore = ini_read_real("stats", "hScore", 0);
}
ini_close();
