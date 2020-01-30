///@param object
var object = argument[0];

///@param X
var X = 0;
if argument_count > 1 { X = argument[1]; }

///@param Y
var Y = 0; 
if argument_count > 2 { Y = argument[2]; }

///@param layer
var Layer = "Instances";
if argument_count > 3 {
	Layer = argument[3];	
}

return instance_create_layer(X, Y, Layer, object);