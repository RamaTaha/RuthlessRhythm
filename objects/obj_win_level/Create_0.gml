/// @description Insert description here
window_set_cursor(cr_arrow);
global.destroy_all = false;

exit1 = instance_create_depth(room_width/2 -600,850,-10,obj_level_button);	
exit1.str = "Main Menu";
exit1.main_menu = true;

restart = instance_create_depth(room_width/2,850,-10,obj_level_button);
restart.str = "Restart";
restart.restart = true;

if room == level4{
	results = instance_create_depth(room_width/2 + 600,850,-10,obj_level_button);
	results.str = "Highscore Results";
	results.results = true;
}
else{
	next = instance_create_depth(room_width/2 + 600,850,-10,obj_level_button);
	next.str = "Next";
	next.next = true;
}

quit = instance_create_depth(room_width/2,1000,-10,obj_level_button);
quit.str = "Quit";
quit.quit = true;

instance_destroy(obj_player);

if room == level1{
	global.lvl1_tscore = global.score_combo*50 + global.player_hp*50 + global.lvl1_score;
	global.total_score = global.lvl1_tscore;
}
else if room == level2{
	global.lvl2_tscore = global.score_combo*50 + global.player_hp*50 + global.lvl2_score;
	global.total_score += global.lvl2_tscore;
	ini_open("unlock_settings.ini");
	ini_write_real("settings", "lvl2", true);
	ini_close();
}
else if room == level3{
	global.lvl3_tscore = global.score_combo*50 + global.player_hp*50 + global.lvl3_score;
	global.total_score += global.lvl3_tscore;
	ini_open("unlock_settings.ini");
	ini_write_real("settings", "lvl3", true);
	ini_close();
}
else if room == level4{
	global.lvl4_tscore = global.score_combo*50 + global.player_hp*50 + global.lvl4_score;
	global.total_score += global.lvl4_tscore;
	ini_open("unlock_settings.ini");
	ini_write_real("settings", "lvl4", true);
	ini_close();
}
show_debug_message("in win level create, total score: " + string(global.total_score));