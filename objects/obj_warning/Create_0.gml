/// @description Insert description here
alarm[0] = 300;

// Center
alarm[1] = 1;
room_speed = 60; // Sets game to 60fps

ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);
// Options
global.volume =  ini_read_real("settings", "volume", .5);
//global.mouse_sens = ini_read_real("settings", "mouse", .6);
ini_close();
