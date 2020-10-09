/// @description Insert description here
// You can write your code in this editor
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

timer++;
// Destroy
if hp <= 0{
	if !correct{
		scr_spawn_beam();
		scr_spawn_beam();
		scr_spawn_razor();
		scr_spawn_circle();
	}
	else{
		// Give extra life
		global.player_hp++;
		global.destroy_all = true;
		music = instance_create_depth(0,0,-10,music_controller);
		global.started = true;	
	}
	audio_play_sound(sfx_shieldUp, 0, false);
	instance_destroy();
}

if global.destroy_all == true{
	instance_destroy();	
}