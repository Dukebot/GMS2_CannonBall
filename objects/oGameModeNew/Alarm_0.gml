/// @description Spawn Enemy

/*var margin = 150;
var rand = random(1);
var randomEnemy = oEnemy1;

if (rand < 0.33) {
	randomEnemy = oEnemy2;
} else if (rand < 0.66) { 
	randomEnemy = oEnemy3;
}

var enemy = instanceCreate(randomEnemy, room_width, random_range(margin, room_height - margin));
enemy.speed = enemy.speedBase * random_range(0.9, 1.1);*/

createAsteroid();

alarm[0] = enemySpawnRate;