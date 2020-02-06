if (spawnEnemy) {
	var margin = 150;
	
	var enemy = oEnemyShooter;
	if (random(1) < 0.5) enemy = oEnemyFat;
	if (random(1) < 0.5) enemy = oEnemyMovable;
	
	//createAsteroid();
	instanceCreate(enemy, room_width, random_range(margin, room_height - margin));
}
alarm[0] = enemySpawnRate;