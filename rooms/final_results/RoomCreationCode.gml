ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);
ini_close();
scr_resolution();
final = instance_create_depth(0,0,-10,obj_final_results);