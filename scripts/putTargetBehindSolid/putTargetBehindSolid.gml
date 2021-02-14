///@description Creation of Target behind the obstacle
function putTargetBehindSolid(argument0) {

	///@param Solid
	var Solid = argument0;
	with Solid {
		///@return objective created
		var objective = 0;
		{
			var created = false;
			while not created {
				var Distance = random_range(100, 200);
				var Direction = random_range(0, 90);
				var pos = lenghtDir(Distance, Direction);
	
				objective = instanceCreate(oObjective, x + pos[0], y + pos[1]);
				with objective {
					if instance_place(x, y, oSolid) {
						instance_destroy();
						objective = 0;
					} else {
						created = true;	
					}
				}
			}
		}
		return objective;
	}


}
