if (not visible) exit;

audio_play_sound(sndPowerUpPickup, 0, 0);

other.Score += Score;
other.targetsHit++;

var messageText = "";
if (bonusType == BonusType.shootStrength) {
	oPlayer.shootStrengthMax += shootStrengthIncrement;
	messageText = "Increasing player Shoot Strength!";
	
/*} else if (bonusType == BonusType.projectileSize) {
	oPlayer.projectileSize *= projectileSizeIncrement;
	messageText = "Increasing player Projectile Size!";*/
	
} else if (bonusType == BonusType.chargeSpeed) {
	oPlayer.shootChargeSpeed += chargeSpeedIncrement;
	messageText = "Increasing player Charge Speed!";
	
} else if (bonusType == BonusType.moreShoots) {
	oPlayer.numShoots++;
	messageText = "Increasing player Number of Shoots!";
}

createMessage(messageText);

visible = false;
alarm[0] = duration;