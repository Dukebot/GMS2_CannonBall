if (global.pause or not visible) exit;

y += speedY;

if (y > room_height) instance_destroy();