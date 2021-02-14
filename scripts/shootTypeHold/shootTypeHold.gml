function shootTypeHold() {
	//Charge shoot holding left mouse button
	if isCharging() {	
		shootStrength += shootChargeSpeed;
		if (shootStrength > shootStrengthMax) shootStrength = shootStrengthMax;
		
	//Shoot if we have accumulated power
	} else if (shootStrength != shootStrengthMin and ammo > 0) {
		show_debug_message("Shooting at strength " + string(shootStrength));
		audio_play_sound(sndCannonShoot, 0, 0);
		ammo--;
		
		//Shoot as many projectiles as we can shoot
		for (var i = 0; i < numShoots; i++) {
			var pos = getCannonHolePosition();
		
			var shoot = instance_create_layer(pos[0], pos[1], "Shoots", oPlayerShoot);
			shoot.Direction = point_direction(x, y, mouse_x, mouse_y);	
			shoot.Speed = shootStrength;
			shoot.image_xscale *= projectileSize;
			shoot.image_yscale *= projectileSize;
		
			if (i != 0) shoot.Direction += random_range(-8, 8);
		
			instanceCreate(oSmokeEffect, pos[0], pos[1]);
		}

		shootStrength = shootStrengthMin;
	}


}
