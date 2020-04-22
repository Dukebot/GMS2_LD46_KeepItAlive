audio_stop_sound(sndBackground);

var objects = [
	oMainTitle, 
	oPlayButton, 
	//oChallengeTimeButton, 
	oExitButton
];
var numObjects = array_length_1d(objects);

for (var i = 0; i < numObjects; i++) {
	if (i == 0) {
		instanceCreate(objects[i], room_width/2 - 30, room_height*(i+1) / (numObjects+1));
	} else {
		instanceCreate(objects[i], room_width/2, room_height*(i+1) / (numObjects+1));
	}
}