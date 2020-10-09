/// @description 1080p
window_set_fullscreen(false);
ini_open("game_settings.ini");
ini_write_real("settings", "width" , 1920);
ini_write_real("settings", "height" , 1080);
ini_close();
global.displayWidth = 1920;
global.displayHeight = 1080;
scr_resolution();
alarm[0] = 1;