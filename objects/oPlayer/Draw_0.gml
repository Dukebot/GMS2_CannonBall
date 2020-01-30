//Draw the cannon and the cercle
draw_sprite_ext(sCanon, 0, x, y, 2, 2, point_direction(x, y, mouse_x, mouse_y), c_white, 1);
draw_self();

if (isCharging()	
	and not instance_exists(oMenuGameWin) 
	and not instance_exists(oMenuGameLost)
	and not laser
) {	
	var numFrames = 22;
	var toCharge = shootStrengthMax - shootStrengthMin;
	var charged = shootStrength - shootStrengthMin;
	var imageIndex = charged * numFrames/toCharge;
	var pos = getCannonHolePosition();
	
	//Draws a line showing the shoot strength
	draw_line_width_color(25, y-100, 25, y-100 - charged*10, 10, c_red, c_red);
	
	if (imageIndex == numFrames) {
		draw_sprite_ext(sPlayerMaxCharge, 0, pos[0], pos[1], 0.5, 0.5, 0, c_white, 1);
	} else {
		draw_sprite_ext(sPlayerCharging, imageIndex, pos[0], pos[1], 0.5, 0.5, 0, c_white, 1);
	}
}