///@param distance
var Distance = argument0;
///@param direction
var Direction = argument1;

var position;
position[0] = lengthdir_x(Distance, Direction);
position[1] = lengthdir_y(Distance, Direction);
return position;