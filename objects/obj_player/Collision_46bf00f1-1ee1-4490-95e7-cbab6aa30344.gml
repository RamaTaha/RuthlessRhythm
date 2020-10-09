/// @description If dragon gets hurt by anything

if !global.invulnerable{
	
	if other.sprite_index == red_laser{
		//show_debug_message("TOUCH LASERr");
		if global.player_color = "blue"{
			audio_play_sound(sfx_hurt, 0, false);
			global.player_hp--;
			global.invulnerable = true;
			flash_white = true;
			white_alpha = 1;
		}
		else{
			//show_debug_message(sprite_get_name(other.sprite_index));
			if global.laser_score_timer >= 10{
				global.laser_score_timer = 0;
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
			}
			
			if global.keypress_timer != 0{
				if global.combo_timer >= 5{
					global.combo_timer = 0;
					//show_debug_message(global.keypress_timer);
					global.score_combo++;
					global.keypress_timer = 0;
				}
			}
			
			other.mask_index = blue_laser_none;
			
		}
	}
	else if other.sprite_index == blue_laser{
		//show_debug_message("TOUCH LASERb");
		if global.player_color = "red"{
			audio_play_sound(sfx_hurt, 0, false);
			global.player_hp--;
			global.invulnerable = true;
			flash_white = true;
			white_alpha = 1;
		}
		else{
			
			if global.laser_score_timer >= 10{
				global.laser_score_timer = 0;
				
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
			}
			other.mask_index = blue_laser_none;
			
			
			if global.keypress_timer != 0{
				if global.combo_timer >= 5{
					global.combo_timer = 0;
					//show_debug_message(global.keypress_timer);
					global.score_combo++;
					global.keypress_timer = 0;
				}
			}
		}	
	}
	else if other.sprite_index == laser_beam{
		if other.image_index <32 || other.image_index>38{
			other.mask_index = blue_laser_none;	
		}
		else{
			global.player_hp--;
			audio_play_sound(sfx_hurt, 0, false);
			global.invulnerable = true;
			flash_white = true;
			white_alpha = 1;
		}
	}
	else{
		global.player_hp--;
		audio_play_sound(sfx_hurt, 0, false);
		global.invulnerable = true;
		flash_white = true;
		white_alpha = 1;
	}
	/*
	if other.sprite_index == meteor_b3{
		global.player_hp--;
		audio_play_sound(sfx_hurt, 0, false);
		global.invulnerable = true;
		flash_white = true;
		white_alpha = 1;
	}
	*/
	
}

