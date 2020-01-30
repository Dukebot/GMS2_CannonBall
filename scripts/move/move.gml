var speedX = lengthdir_x(Speed, Direction);
var speedY = lengthdir_y(Speed, Direction);

x += speedX;
y += speedY;

if (distance_to_point(initialX, initialY) > changeDirectionDistance) {	
	Direction += 180;
}