///@param numObstacles
function generateMap(argument0) {
	var numObstacles = argument0;

	show_debug_message("Generating Map");
	generatingMap = true;
	var margin = 200;
	var solidSpacing = 2;

	for (var i = 0; i < numObstacles; i++) {
		var Solid = putSolid(margin, solidSpacing); 
		putTargetBehindSolid(Solid);
	}

	setSolidsToNormalSize();

	generatingMap = false;


}
