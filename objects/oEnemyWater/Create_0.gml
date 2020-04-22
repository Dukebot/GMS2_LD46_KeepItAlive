//randomizer that increases size and lowers speed (or viceversa)
var randomizer = random_range(0.5, 1.5);
//randomizer = 1;

Speed = global.waterSpeed * 1/randomizer;
speedIncFactor = global.waterSpeedMultipliyer;
Direction = 0;

//Each time we bounce we lose 1 hp
maxHitPoints = global.waterHP * randomizer;
hitPoints = maxHitPoints;
canBounce = true;

scale = 1 * randomizer;