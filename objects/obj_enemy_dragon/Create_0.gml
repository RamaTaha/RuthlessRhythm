/// @description Insert description here
flash_white = false;
white_alpha = 0;

reloaded = true; // Reload weapons

fire_timer = 0;
fire_timer_limit = 120;

can_shoot = true;
fire_speed = 1;

hp = 5;

speedD = choose(1,1.5,2);
drag_direction = "left"
image_xscale = 1.3;
image_yscale = 1.3;
if global.drag_direction == "left"{
	drag_direction = "right";	
	global.drag_direction = "right";
}
else{
	drag_direction = "left";
	global.drag_direction = "left";
}
