var margin = 150;
	
if (random(1) < 0.9) {
	createAsteroid();
} else {
	var enemy = choose(oEnemyShooter, oEnemyFat, oEnemyMovable);
	instanceCreate(enemy, room_width, random_range(margin, room_height - margin));
}	

alarm[0] = enemySpawnRate;