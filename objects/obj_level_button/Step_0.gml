/// @description Insert description here
if mouse_x >= x-sprite_width/2 && mouse_x <= x+sprite_width/2 
&& mouse_y >= y-sprite_height/2 && mouse_y <= y+sprite_height/2{
	hover = true;
	if main_menu && mouse_check_button_pressed(mb_left){
		global.started = false;
		global.destroy_all = false;
		if instance_exists(obj_highscore){
			instance_destroy(obj_highscore);	
		}
		instance_destroy(music_controller);
		audio_stop_sound(global.song1);
		scr_reset_room();
		room_goto(menu);
	}
	else if restart && mouse_check_button_pressed(mb_left){
		audio_stop_sound(global.song1);
		scr_reset_room();
		if room == level1{
			global.total_score -= global.lvl1_tscore;
			global.lvl1_score = 0;
			global.lvl1_tscore = 0;
		}
		else if room == level2{
			global.total_score -= global.lvl2_tscore;
			global.lvl2_score = 0;
			global.lvl2_tscore = 0;
		}
		else if room == level3{
			global.total_score -= global.lvl3_tscore;
			global.lvl3_score = 0;
			global.lvl3_tscore = 0;
		}
		else if room == level4{
			global.total_score -= global.lvl4_tscore;
			global.lvl4_score = 0;
			global.lvl4_tscore = 0;
		}
		random_set_seed(date_current_datetime());
		randomize();
		global.question_list = scr_questions();
		room_restart();
	}
	else if next && mouse_check_button_pressed(mb_left){
		audio_stop_sound(global.song1);
		scr_reset_room();
		randomize(); // Randomizes seed
		global.question_list = scr_questions();
		if room == level1{
			room_goto(level2);	
		}
		else if room == level2{
			room_goto(level3);	
		}
		else if room == level3{
			room_goto(level4);	
		}
	}
	else if results && mouse_check_button_pressed(mb_left){
		//final = instance_create_depth(0,0,-10,obj_final_results);
		instance_destroy(obj_win_level);
		global.destroy_all = true;
		instance_destroy();
		room_goto(final_results);
	}
	else if quit && mouse_check_button_pressed(mb_left){
		game_end();
	}
	else if back1 && mouse_check_button_pressed(mb_left){
		global.destroy_all = true;
		instance_create_depth(0,0,-10,menu_controller);
		if instance_exists(obj_highscore){
			instance_destroy(obj_highscore);	
		}
		if instance_exists(menu_options_controller){
			instance_destroy(menu_options_controller);	
		}
		//room_goto(menu);
	}
	else if volume && mouse_check_button_pressed(mb_left){
		if str == "Up"{
			if global.volume < 1{
				global.volume += .1;
				//show_debug_message(global.volume);
				audio_master_gain(global.volume);
			}
		}
		else if str == "Down"{
			if global.volume > 0{
				global.volume -= .1;
				//show_debug_message(global.volume);
				audio_master_gain(global.volume);
			}
		}
		ini_open("game_settings.ini");
		ini_write_real("settings", "volume" , global.volume);
		ini_close();
	}
	/*
	else if mouse_sens&& mouse_check_button_pressed(mb_left){
		if str == "Up"{
			global.mouse_sens -= .1;
		}
		else if str == "Down"{
			global.mouse_sens -= .1;
		}
		ini_open("game_settings.ini");
		ini_write_real("settings", "mouse" , global.mouse_sens);
		ini_close();
	}
	*/
	else if resolution && mouse_check_button_pressed(mb_left){
		if str == "Fullscreen"{
			// If game isn't already full screened, then full screen
			if !window_get_fullscreen(){
				window_set_fullscreen(true);
				ini_open("game_settings.ini");
				ini_write_real("settings", "width" , display_get_width());
				ini_write_real("settings", "height" , display_get_height());
				ini_close();
				global.displayWidth = display_get_width();
				global.displayHeight = display_get_height();
				scr_resolution();
				alarm[0] = 1;
			}
		}
		else if str == "1920x1080"{
			window_set_fullscreen(false);
			ini_open("game_settings.ini");
			ini_write_real("settings", "width" , 1920);
			ini_write_real("settings", "height" , 1080);
			ini_close();
			global.displayWidth = 1920;
			global.displayHeight = 1080;
			scr_resolution();
			alarm[0] = 1;
		}
		else if str == "1280x720"{
			window_set_fullscreen(false);
			ini_open("game_settings.ini");
			ini_write_real("settings", "width" , 1280);
			ini_write_real("settings", "height" , 720);
			ini_close();
			global.displayWidth = 1280;
			global.displayHeight = 720;
			scr_resolution();
			alarm[0] = 1;
		}
		else if str == "640x360"{
			window_set_fullscreen(false);
			ini_open("game_settings.ini");
			ini_write_real("settings", "width" , 640);
			ini_write_real("settings", "height" , 360);
			ini_close();
			global.displayWidth = 640;
			global.displayHeight = 360;
			scr_resolution();
			alarm[0] = 1;
		}
	}
}
else{
	hover = false;	
}


if global.destroy_all{
	instance_destroy();		
}

if nohov{
	str = "Volume " + string(global.volume);
}