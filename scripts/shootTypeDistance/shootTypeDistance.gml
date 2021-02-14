function shootTypeDistance() {
	shootStrength = distance_to_point(mouse_x, mouse_y)/20;
	if shootStrength > shootStrengthMax { 
		shootStrength = shootStrengthMax; 
	}

	//Shoot
	if mouse_check_button_pressed(mb_left) {
		if ammo > 0 {
			ammo--;		
			var shoot = instance_create_layer(x, y, "Instances", oPlayerShoot);
			shoot.Direction = point_direction(x, y, mouse_x, mouse_y);
			shoot.Speed = shootStrength;
		}
	}


}
