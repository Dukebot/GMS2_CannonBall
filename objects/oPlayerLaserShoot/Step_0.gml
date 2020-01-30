if (global.pause) {
	speed = 0;
	exit;
} 

speed = Speed;

//Destroy ball when out of map and increse player's score
if isOutsideRoom() {
	instance_destroy();
	oPlayer.Score += Score*targetsHit;
}