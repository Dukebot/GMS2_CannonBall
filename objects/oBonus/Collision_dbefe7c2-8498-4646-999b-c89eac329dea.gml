if (not visible) exit;

audio_play_sound(sndPowerUpPickup, 0, 0);

other.Score += Score;
other.targetsHit++;

var messageText = "";
if (bonusType == BonusType.shootStrength) {
	oPlayer.shootStrengthMax += shootStrengthIncrement;
	oPlayer.shootChargeSpeed += chargeSpeedIncrement;
	messageText = "Increasing player Shoot Strength!";
	
} else if (bonusType == BonusType.moreShoots) {
	oPlayer.numShoots++;
	messageText = "Increasing player Number of Shoots!";
	
} else if (bonusType == BonusType.bomb) {
	instance_destroy(oEnemy);
	instance_destroy();
	messageText = "All enemies have been destroyed!";
}

createMessage(messageText);

visible = false;
alarm[0] = duration;