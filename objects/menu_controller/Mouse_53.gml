/// @description Menu nav

switch(menu_index){
	case 0:
		if room_exists(room+1){
			global.started = false;
			global.destroy_all = false;
			audio_stop_sound(global.song1);
			audio_stop_sound(menu_song1);
			scr_reset_room();
			room_goto_next();
		}
		break;
	
	case 1:
		instance_create_depth(0,0,-10,menu_pick_controller);
		instance_destroy();
		break;
	case 2:
		if instance_exists(obj_highscore){
			instance_destroy(obj_highscore);
		}
		instance_create_depth(0,0,-10,obj_highscore);
		instance_destroy();
		break;
	case 3:
		instance_create_depth(0,0,-10,menu_options_controller);
		instance_destroy();
		break;
	case 4:
		instance_create_depth(0,0,-10,menu_tutorial_controller);
		instance_destroy();
		break;
	case 5:
		instance_create_depth(0,0,-10,menu_license_controller);
		instance_destroy();
		break;
	case 6:
		game_end();
		break;
}
