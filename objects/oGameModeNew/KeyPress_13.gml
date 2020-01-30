/// @description Pause

if (not instance_exists(oMenuGamePause)) {
	instanceCreate(oMenuGamePause);
} else {
	instance_destroy(oMenuGamePause);	
	global.pause = false;
}
