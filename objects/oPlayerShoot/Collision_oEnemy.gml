//Calculate ball damage
var damage = Speed;


var isInArray = false;
for (var i = 0; i < array_length_1d(enemiesHitted); i++) {
	if (enemiesHitted[i] == other) {
		isInArray = true;
		break;
	}
}

if (not isInArray) {
	enemiesHitted = arrayAdd(enemiesHitted, other);
	
	for (var i = 0; i < 50; i++) {
		instanceCreate(oBulletParticle, x, y, "Effects");
	}
	
	with (other) {
		if (hitPoints <= 1) {
			instance_destroy();
		} else {
			hitPoints -= damage;
			
			if (hitPoints <= 0) {
				instance_destroy();	
			}
		}
	}

	targetsHit++;
	Score += other.Score;
}