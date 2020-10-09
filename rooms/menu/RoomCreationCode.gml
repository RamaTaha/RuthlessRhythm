scr_globals();
ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);

// Options
global.volume =  ini_read_real("settings", "volume", .5);
audio_master_gain(global.volume);
//global.mouse_sens = ini_read_real("settings", "mouse", .6);
ini_close();

// Unlocks
//global.lvl2_unlock = false;
//global.lvl3_unlock = false;
//global.lvl4_unlock = false;

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

global.song1 = audio_play_sound(song_menu, 5, false);

random_set_seed(date_current_datetime());
randomize();
scr_resolution();
