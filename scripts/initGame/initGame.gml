function initGame() {
	show_debug_message("\n\n\nInitializating game...");

	ini_open("GameSettings.ini");
	global.level = ini_read_real("game", "lastPlayedLevel", 1);
	ini_close();

	global.GRAVITY = 0.5;
	global.pause = false;


}
