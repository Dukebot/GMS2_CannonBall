draw_set_color(c_white);

var incrementY = 120;
var posY = incrementY*2;

//Message Game Win
draw_set_font(fontRetro5);
draw_set_halign(fa_center);
draw_text_transformed(room_width/2, posY, "Game Win!", 4, 4, 0);
posY += incrementY;

draw_set_font(fontRetro5);

//Next Level
if(draw_button_sprite(spr_button, 0, 1, 
	room_width/2 - (sprite_get_width(spr_button)/2), posY, 
	"Next Level", c_white, false
)) {
	global.level++;
	room_restart();
}
posY += incrementY;


//Exit = Go to room menu
if(draw_button_sprite(spr_button, 0, 1, 
	room_width/2 - (sprite_get_width(spr_button)/2),
	posY, 
	"Exit", c_white, false
)) {	
	room_goto(rMenu);
}
