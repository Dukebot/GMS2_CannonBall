///@param spawnRate
function createPowerUpController(argument0) {
	var SpawnRate = argument0;

	var controller = instanceCreate(oPowerUpController);

	with (controller) {
		bonusSpawnRate = SpawnRate;
		alarm[0] = bonusSpawnRate;
	}

	return controller;


}
