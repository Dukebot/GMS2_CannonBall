draw_set_color(c_white);

var yInc = 120;
var posY = yInc;

//Title of the menu: GAME PAUSED
draw_set_font(fontRetro5);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(room_width/2, posY, "Game Paused!", 4, 4, 0);
posY += yInc;

var posX = room_width/2 - sprite_get_width(spr_button)/2;
draw_set_font(fontRetro5);

//Continue Level
if(draw_button_sprite(spr_button, 0, 1, posX, posY, "Continue", c_white, false)) {
	global.pause = false;
	instance_destroy();
}
posY += yInc;

//Restart Level
if(draw_button_sprite(spr_button, 0, 1, posX, posY, "Restart", c_white, false)) {
	global.pause = false;
	room_restart();
}
posY += yInc;

//Exit = Go to room menu
if(draw_button_sprite(spr_button, 0, 1, posX, posY, "Exit", c_white, false)) {
	global.pause = false;
	room_goto(rMenu);
}
