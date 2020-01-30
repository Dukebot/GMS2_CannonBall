message = "";
duration = 3*60;
messageSeparation = 20;

alarm[0] = duration;

x = room_width/2;
y = room_height/2;

//Adjust position depending on how many messages exist.
//y += (instance_number(oMessage) - 1) * messageSeparation;
