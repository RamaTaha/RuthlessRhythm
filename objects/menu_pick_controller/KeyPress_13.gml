/// @description Menu nav

switch(menu_index){
	case 0:
		if room_exists(room+1){
			global.started = false;
			global.destroy_all = false;
			audio_stop_sound(global.song1);
			audio_stop_sound(menu_song1);
			scr_reset_room();
			instance_destroy();
			room_goto_next();
		}
		break;
	
	case 1:
		if (global.unlock_lvl2){
			global.started = false;
			global.destroy_all = false;
			audio_stop_sound(global.song1);
			audio_stop_sound(menu_song1);
			scr_reset_room();
			
			room_goto(level2);
		}
		break;
	case 2:
		if (global.unlock_lvl3){
			global.started = false;
			global.destroy_all = false;
			audio_stop_sound(global.song1);
			audio_stop_sound(menu_song1);
			scr_reset_room();
			instance_destroy();
			room_goto(level3);
		}
		break;
	case 3:
		if (global.unlock_lvl4){
			global.started = false;
			global.destroy_all = false;
			audio_stop_sound(global.song1);
			audio_stop_sound(menu_song1);
			scr_reset_room();
			instance_destroy();
			room_goto(level4);
		}
		break;
	case 4:
		instance_create_depth(0,0,-10,menu_controller);
		instance_destroy();
		break;
	case 5:
		game_end();
		break;
}
