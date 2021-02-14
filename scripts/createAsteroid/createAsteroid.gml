function createAsteroid() {
	var margin = 150;

	var size = 0.75;
	size *= random_range(1, 2);

	var speedBase = calculateEnemySpeed();
	speedBase *= size;
	speedBase *= random_range(0.8, 1.2);

	var enemy = instanceCreate(oEnemy, room_width, random_range(margin, room_height - margin));
	enemy.Speed = speedBase;
	enemy.sprite_index = choose(Asteroid_1, Asteroid_2, Asteroid_3, Asteroid_4, Asteroid_5);
	enemy.image_xscale = size;
	enemy.image_yscale = size;


}
