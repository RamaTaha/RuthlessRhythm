/// @description Insert description here
if room_exists(room+1){
	global.started = false;
	global.destroy_all = false;
	audio_stop_sound(global.song1);
	audio_stop_sound(menu_song1);
	scr_reset_room();
	room_goto_next();
}
