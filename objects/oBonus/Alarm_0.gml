/// @description Bonus End
if (bonusType == BonusType.shootStrength) {
	oPlayer.shootStrengthMax -= shootStrengthIncrement;
}
/*else if (bonusType == BonusType.projectileSize) {
	oPlayer.projectileSize /= projectileSizeIncrement;
}*/
else if (bonusType == BonusType.chargeSpeed) {
	oPlayer.shootChargeSpeed -= chargeSpeedIncrement;
}
else if (bonusType == BonusType.moreShoots) {
	oPlayer.numShoots--;
}

instance_destroy();