x = room_width/2;
y = room_height+100;

global.pause = true;
instance_destroy(oPauseButton);

Score = oGame.Score;
drawResume = false;
statsUpdated = false;
