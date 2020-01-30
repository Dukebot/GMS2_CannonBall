draw_set_color(c_white);
draw_set_font(fontRetro5);
draw_set_halign(fa_center);

var yInc = 120;
var yPos = yInc*2;

//Message Game Lost
draw_text_transformed(room_width/2, yPos, "Game Lost!", 4, 4, 0);
yPos += yInc;

//Restart
if(draw_button_sprite(spr_button, 0, 1, 
	room_width/2 - (sprite_get_width(spr_button)/2), yPos, 
	"Restart", c_white, false
)) {
	room_restart();
}
yPos += yInc;

//Exit = Go to room menu
if(draw_button_sprite(spr_button, 0, 1, 
	room_width/2 - (sprite_get_width(spr_button)/2), yPos, 
	"Exit", c_white, false
)) {
	room_goto(rMenu);
}
