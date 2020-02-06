if (global.pause) exit;

var speedX = lengthdir_x(Speed, Direction);	
var speedY = lengthdir_y(Speed, Direction);
var size = sprite_width/2;

if (y + size > room_height) or (y - size < 0) {
	speedY = -speedY;
}

x = x + speedX;
y = y + speedY;

// update speed and direction
Speed = point_distance(0, 0, speedX, speedY);
Direction = point_direction(0, 0, speedX, speedY);

image_angle = Direction;
