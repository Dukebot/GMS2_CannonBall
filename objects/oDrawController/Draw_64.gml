//Draw a crosshair instead of mourse cursor
draw_sprite_ext(sPlayerCrosshair, 0, mouse_x, mouse_y, 1, 1, 0, c_white, 1);

//Draw Player Lives
for (var i = 0; i < oPlayer.Health; i++) {
	draw_sprite_ext(sHeart, 0, 25 + i*25, 25, 0.25, 0.25, 0, c_white, 1);
}
