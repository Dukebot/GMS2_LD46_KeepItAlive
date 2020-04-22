global.pause = false;

instanceCreate(oEnemySpawner);
instanceCreate(oBonusSpawner);
instanceCreate(oPauseButton);

audio_stop_sound(sndBackground);
audio_play_sound(sndBackground, 0, 1);

time = 0;
Score = 0;

level = 1;
levelUpTime = 10*60;
levelUpCount = levelUpTime;

enemySpawnRateInc = 0.9;