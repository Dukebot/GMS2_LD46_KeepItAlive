///@param water
var water = argument0;

///@param amount
var amount = argument1;

with (water) {
	audio_play_sound(sndWaterClick, 0, 0);
	
	hitPoints -= amount;
	if hitPoints <= maxHitPoints/2 {
		instance_destroy();
	}
	
	for (var i = 0; i < 50; i++) {
		instanceCreate(oWaterParticle, x, y);
	}
}