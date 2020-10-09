/// @description Attack when pressed

if (enable_fire){
	audio_play_sound(sfx_laser2, 0, false);
	// Create power shot
	//if laser_powerup == 0{
		// Create shot
		
	shot = instance_create_depth(x, y-70, 1, obj_breath_attack);
	//}
	//else if laser_powerup >= 1{
		// Create shot
		
		//instance_create_depth(x-44, y, 1, objPlayerLaser);
		//instance_create_depth(x+44, y, 1, objPlayerLaser);
	//}
	
	
	enable_fire = false;
}
// Reloading lasers
else{
	// Timer to fire
	fire_timer++;
	if fire_timer >= fire_timer_max{
		enable_fire = true;
		fire_timer = 0; // Reset timer back to 0
	}
}
