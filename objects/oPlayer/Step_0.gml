//shootTypeDistance();

if (global.pause) exit;

if (shootStrengthMax > shootStrengthLimit) shootStrengthMax = shootStrengthLimit;


if laser {
	laserCount--;
	if (laserCount < 0) {
		if (mouse_check_button_pressed(mb_left)) {
			var pos = getCannonHolePosition();
			instanceCreate(oPlayerLaserShoot, pos[0], pos[1]);		
			laserCount = laserCooldown;
		}
	}
} else {
	shootTypeHold();
}
