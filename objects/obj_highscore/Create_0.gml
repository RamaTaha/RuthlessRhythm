/// @description  Initialise loading the online highscores
// change = to global.won name

player_name = global.message_name;
show_debug_message(player_name);
scr_get_score(player_name, 10);
text1 = "Please wait for the highscores to load...";
text2 = "";
alarm[1] = room_speed;

global.destroy_all = false;

ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);
// Options
global.volume =  ini_read_real("settings", "volume", .5);
//global.mouse_sens = ini_read_real("settings", "mouse", .6);
ini_close();

if room != final_results{
	quit = instance_create_depth(room_width/2,950,-10,obj_level_button);
	quit.str = "Back";
	quit.back1 = true;
}