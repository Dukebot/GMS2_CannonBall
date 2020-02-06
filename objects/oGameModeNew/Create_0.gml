global.pause = false;

//Turn off cursor to draw sprite instead
window_set_cursor(cr_none);

audio_stop_all();
audio_play_sound(sndBackground, 0, 1);

//Level
level = global.level;
levelUpRate = 10*60;
//alarm[0] = levelUpRate;
ini_open("GameSettings.ini");
ini_write_real("game", "lastPlayedLevel", level);
ini_close();

//Level win
levelWinTime = 60*60;

var enemySpawnRateIncrement = 0.95;
var enemySpawnRate = 1.5*60 * power(enemySpawnRateIncrement, level-1);
enemySpeedBase = 3;
enemySpeedIncrement = 0.05;

//Create Controller Objects
instanceCreate(oInputController);
instanceCreate(oDrawController);
createPowerUpController(8*60);
//createEnemyController(enemySpawnRate);
createEnemyController(4*60);