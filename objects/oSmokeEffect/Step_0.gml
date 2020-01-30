if (duration % 2 == 0) {
	y -= 2;
	x += random_range(-5, 5);

	effect_create_above(ef_smoke, x, y, 1, c_white);
}

duration--;
if (duration < 0) instance_destroy();