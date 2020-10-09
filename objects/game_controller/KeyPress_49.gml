/// @description 360p
window_set_fullscreen(false);
ini_open("game_settings.ini");
ini_write_real("settings", "width" , 640);
ini_write_real("settings", "height" , 360);
ini_close();
global.displayWidth = 640;
global.displayHeight = 360;
scr_resolution();
alarm[0] = 1;