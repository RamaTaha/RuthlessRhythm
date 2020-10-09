/// @description Insert description here
// You can write your code in this editor

if (y < 50){
	y = lerp(50, y, .90)
}
if y>49{
	
	if x >= room_width -100{
			x-=1;
			drag_direction = "left";
	}
	
	if x <= 100{
			x+=1;
			drag_direction = "right";
	}
	
	if drag_direction == "right"{
		x+=2+speedD;
	}
	if drag_direction == "left"{
		x-=2+speedD;
	}
		
}
//Reload
if reloaded
{
	if can_shoot{
			shot = instance_create_depth(x, y, 0, obj_enemy_attack);
	}
	reloaded = false;
}

else{
	// Timer to fire
	fire_timer++;
	// Fire twice as fast if fire_speed = 2
	if fire_timer >= fire_timer_limit/fire_speed{
		reloaded = true;
		fire_timer = 0; // Reset timer back to 0
	}
}

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
	//	instance_create_depth(x,y,-1,objPowerUp);	
	//}

	if room == level1{
		global.lvl1_score+=50;	
	}
	else if room == level2{
		global.lvl2_score+=50;	
	}
	else if room == level3{
		global.lvl3_score+=50;	
	}
	else if room == level4{
		global.lvl4_score+=50;		
	}
	audio_play_sound(sfx_shieldUp, 0, false);
	instance_destroy();	
}