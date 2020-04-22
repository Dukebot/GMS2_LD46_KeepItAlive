global.pause = true;
	
instance_create_layer(room_width/2, room_height/2-150,"Interface", oContinueButton);
instance_create_layer(room_width/2, room_height/2,"Interface", oRestartButton);
instance_create_layer(room_width/2, room_height/2+150,"Interface", oMainButton);
instance_destroy(oPauseButton);