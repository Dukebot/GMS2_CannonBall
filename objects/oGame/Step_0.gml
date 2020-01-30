if not instance_exists(oPlayer) exit;

if not instance_exists(oObjective) {
	show_debug_message("NO objectives, going to next level");
	//room_goto_next();	
	room_restart();
} 
else if oPlayer.ammo <= 0 and not instance_exists(oPlayerShoot) {
	show_debug_message("NO ammo, restarting level");
	room_restart();
}