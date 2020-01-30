//Spawning position of the bonus object
var horizontalMargin = 128;
x = random_range(horizontalMargin, room_width - horizontalMargin);
y = 0;

//Descending speed of the bonus
speedY = 2;

//bonus effect duration
duration = 15*60;

//score points given by hittin the power up
Score = 500;

//bonus type:
enum BonusType {
	shootStrength, 
	//projectileSize,
	chargeSpeed,
	moreShoots
}

bonusType = choose(0, 1, 2/*, 3*/);

shootStrengthIncrement = 5;
//projectileSizeIncrement = 1.5;
chargeSpeedIncrement = 0.25;