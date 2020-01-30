//Reset solids to normal size
var numSolids = instance_number(oSolid);
for (var i = 0; i < numSolids; i++) {
	var Solid = instance_find(oSolid, i);
	var isTarget = false;
	
	var numTargets = instance_number(oObjective);
	for (var j = 0; j < numTargets; j++) {
		var target = instance_find(oObjective, j);
		
		if (Solid == target) {
			isTarget = true;
			break;
		}
	}
	
	if not isTarget {
		Solid.image_xscale = 1;
		Solid.image_yscale = 1;
	}
}