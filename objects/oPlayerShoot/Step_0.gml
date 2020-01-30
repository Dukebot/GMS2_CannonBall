if (Speed == 0 or global.pause) exit;

var speedX = lengthdir_x(Speed, Direction);
var speedY = lengthdir_y(Speed, Direction);

gravityAcceleration += global.GRAVITY;
speedY += gravityAcceleration;

x = x + speedX;
y = y + speedY;

//Destroy ball when out of map and increse player's score
if x < 0 or x > room_width or y > room_height {
	instance_destroy();
	oPlayer.Score += Score*targetsHit;
	
	/*if (targetsHit > 1) {		
		createMessage("Combo X" + string(targetsHit));
	}*/
}