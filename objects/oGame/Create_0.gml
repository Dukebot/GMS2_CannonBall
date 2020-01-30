if instance_number(oGame) > 1 {
	show_error("Instanciating more than one oGame", true);	
}

//Turn off map generation to experiment other things
//generateMap(5);

//Create player bottom left part of the 
instanceCreate(oPlayer, 0, room_height);