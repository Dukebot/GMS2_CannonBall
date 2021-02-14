///@param enemySpawnRate
function createEnemyController(argument0) {
	var spawnRate = argument0;

	var controller = instanceCreate(oEnemyController);

	with controller {
		enemySpawnRate = spawnRate;
		alarm[0] = enemySpawnRate;
	}

	return controller;


}
