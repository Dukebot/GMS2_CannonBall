
//If game is pause we increase the alarms to the timer gets frozen while paused
if (global.pause) {
	alarm[0]++;
	alarm[1]++;
	alarm[2]++;
	exit;
}

//Game Win
levelWinTime--;
if levelWinTime < 0 {
	
	//Stop all alarms if game is win
	alarm[0] = 0;
	alarm[1] = 0;
	alarm[3] = 0;
	
	//Create the win menú if no enemies left and we did not lose the game
	if (not instance_exists(oEnemy) 
		and not instance_exists(oPlayerShoot)
		and not instance_exists(oMenuGameLost) 
		and not instance_exists(oMenuGameWin)
	) {
		instanceCreate(oMenuGameWin);
	}
}

//Game Over
if (oPlayer.Health <= 0 and not instance_exists(oMenuGameLost)) {
	instanceCreate(oMenuGameLost);
}