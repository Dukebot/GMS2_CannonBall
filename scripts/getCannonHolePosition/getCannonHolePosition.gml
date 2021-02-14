function getCannonHolePosition() {
	var Direction = point_direction(x, y, mouse_x, mouse_y);

	var posX = lengthdir_x(150, Direction);
	var posY = room_height + lengthdir_y(150, Direction);
	
	return [posX, posY];


}
