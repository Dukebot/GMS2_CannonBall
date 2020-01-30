global.pause = false;

audio_stop_all();
audio_play_sound(sndBackground, 0, 1);

//Bonus
bonusSpawnRate = 5*60;
alarm[1] = bonusSpawnRate;

//Level
level = global.level;
levelUpRate = 10*60;
//alarm[2] = levelUpRate;
ini_open("GameSettings.ini");
ini_write_real("game", "lastPlayedLevel", level);
ini_close();


//Enemy
enemySpawnRateIncrement = 0.95;
enemySpawnRate = 2*60 * power(enemySpawnRateIncrement, level-1);
alarm[0] = enemySpawnRate;

enemySpeedBase = 2;
enemySpeedIncrement = 0.05;

//Level win
levelWinTime = 60*60;

//Turn off cursor to draw sprite instead
window_set_cursor(cr_none);