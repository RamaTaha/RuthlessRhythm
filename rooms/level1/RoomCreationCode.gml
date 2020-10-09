//scr_globals();
ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);
// Options
global.volume =  ini_read_real("settings", "volume", .5);
ini_close();
scr_resolution();
