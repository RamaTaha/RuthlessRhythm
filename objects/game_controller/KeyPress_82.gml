/// @description restart
audio_stop_sound(global.song1);
scr_reset_room();
random_set_seed(date_current_datetime());
randomize();
global.question_list = scr_questions();

if room == level1{
	global.total_score -= global.lvl1_tscore;
	global.lvl1_score = 0;
	global.lvl1_tscore = 0;
}
else if room == level2{
	global.total_score -= global.lvl2_tscore;
	global.lvl2_score = 0;
	global.lvl2_tscore = 0;
}
else if room == level3{
	global.total_score -= global.lvl3_tscore;
	global.lvl3_score = 0;
	global.lvl3_tscore = 0;
}
else if room == level4{
	global.total_score -= global.lvl4_tscore;
	global.lvl4_score = 0;
	global.lvl4_tscore = 0;
}
		
room_restart();
