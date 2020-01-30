///@param margin
var margin = 0;
if (argument_count > 0) margin = argument[0];

///@param solidSpacing
var solidSpacing = 1;
if (argument_count > 1) solidSpacing = argument[1];

///@return obstacle created
var Solid = 0;

//Creation of obstacle
var created = false;
while not created {
	var posX = random_range(margin, room_width - margin);
	var posY = random_range(margin, room_height - margin);
		
	Solid = instanceCreate(oSolid, posX, posY);
	with Solid {
		image_xscale = solidSpacing;
		image_yscale = solidSpacing;
		
		if instance_place(x, y, oSolid) {
			instance_destroy();
			Solid = 0;
		} else {
			created = true;
			show_debug_message("Creating solid");
		}
	}
}

return Solid;