/// @description Bonus End
if (bonusType == BonusType.shootStrength) {
	oPlayer.shootStrengthMax -= shootStrengthIncrement;
	oPlayer.shootChargeSpeed -= chargeSpeedIncrement;
}
else if (bonusType == BonusType.moreShoots) {
	oPlayer.numShoots--;
}

instance_destroy();