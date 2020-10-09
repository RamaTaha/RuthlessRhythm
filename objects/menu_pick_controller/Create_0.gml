/// @description Insert description here
room_speed = 60; // Sets game to 60fps
alarm[0] = 1; // Center window

ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);
// Options
global.volume =  ini_read_real("settings", "volume", .5);
//global.mouse_sens = ini_read_real("settings", "mouse", .6);
ini_close();

ini_open("unlock_settings.ini");
global.unlock_lvl2 = ini_read_real("settings", "lvl2", false);
global.unlock_lvl3 = ini_read_real("settings", "lvl3", false);
global.unlock_lvl4 = ini_read_real("settings", "lvl4", false);
ini_close();

if global.unlock_lvl4{
	global.unlock_lvl3 = true;
	global.unlock_lvl2 = true;
}
else if global.unlock_lvl3{
	global.unlock_lvl2 = true;
}

// Fixes a problem with looping song
menu_song1 = global.song1;





menu_x = room_width/2;
menu_y = room_height/2-100;
button_h = 32;

// buttons
button[0] = "Level 1";
button[1] = "Level 2";
button[2] = "Level 3";
button[3] = "Level 4";
button[4] = "Back";
button[5] = "Quit Game";


buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;
