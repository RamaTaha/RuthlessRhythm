/// @description Meteor

// Flash white
if flash_white{
	if white_alpha > 0 {
		white_alpha -= .15;
	}
	else{
	 	flash_white = false;
		white_alpha = 0;
	}
}

// Destroy
if hp <= 0{
	
	//instance_create_depth(x-50,y,1,objExplosionEffect);
	//global.vscore += 50;
	// Chance powerup
	//var rng = random_range(0, 100);
	//if rng <=25{
		//instance_create_depth(x,y,-1,objPowerUp);	
	//}
	instance_destroy();	
	audio_play_sound(sfx_shieldUp, 0, false);
}
