function enemyChangeDirection() {
	Direction = random_range(180-45, 180+45);

	if (y - room_height/4 < 0) {
		Direction = random_range(180, 180+45);
	} else if (y + room_height/4 > room_height) {
		Direction = random_range(180-45, 180);
	}


}
