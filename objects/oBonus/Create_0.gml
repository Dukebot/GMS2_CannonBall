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
	moreShoots,
	bomb,
}

bonusType = choose(0, 1, 2);

shootStrengthIncrement = 5;
chargeSpeedIncrement = 0.15;

//set sprite
if (bonusType == BonusType.shootStrength) {
	sprite_index = sPowerUpShoot;
} else if (bonusType == BonusType.moreShoots) {
	sprite_index = sPowerUpPlasma;
} else if (bonusType == BonusType.bomb) {
	sprite_index = sPowerUpBomb; 
}