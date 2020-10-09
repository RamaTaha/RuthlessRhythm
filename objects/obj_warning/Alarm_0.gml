/// @description Insert description here
// You can write your code in this editor
if room_exists(room+1){
	global.started = false;
	global.destroy_all = false;
	instance_destroy(music_controller);
	audio_stop_sound(global.song1);
	scr_reset_room();
	room_goto_next();
}