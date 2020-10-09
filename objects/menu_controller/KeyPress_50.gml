/// @description 720p
window_set_fullscreen(false);
ini_open("game_settings.ini");
ini_write_real("settings", "width" , 1280);
ini_write_real("settings", "height" , 720);
ini_close();
global.displayWidth = 1280;
global.displayHeight = 720;
scr_resolution();
alarm[0] = 1;