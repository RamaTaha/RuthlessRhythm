/// @description Full screen
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