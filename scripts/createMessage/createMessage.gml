///@arg messageText
function createMessage(argument0) {
	var messageText = argument0;

	instance_destroy(oMessage);
	var message = instanceCreate(oMessage, room_width/2, room_height/2);
	message.message = messageText;


}
