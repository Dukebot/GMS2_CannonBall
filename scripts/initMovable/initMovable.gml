///@param speed
function initMovable() {
	Speed = 1;
	if (argument_count > 0) Speed = argument[0];

	///@param Direction
	Direction = 0;
	if (argument_count > 1) Direction = argument[1];

	///@param changeDirectionDistance
	changeDirectionDistance = 120;
	if (argument_count > 2) changeDirectionDistance = argument[2];

	initialX = x;
	initialY = y;

	distance = 0;



}
