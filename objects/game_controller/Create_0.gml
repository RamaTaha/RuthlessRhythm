/// @description Controls game behaviors
room_speed = 60; // Sets game to 60fps
window_set_cursor(cr_none); // Hides cursor in game

audio_stop_all();
depth = 10; // Pushes into page
alarm[0] = 1; // Center window

paused = false;

all_objects[0,0] = noone;

music = noone;

global.started = false;
count1 = 0;

if global.qcount == 0{
	global.question_list = scr_questions();
	
	/*
	show_debug_message(global.question_list[0,0]);
	show_debug_message(global.question_list[0,1]);
	show_debug_message(global.question_list[0,2]);
	show_debug_message(global.question_list[0,3]);
	show_debug_message(global.question_list[0,4]);

	show_debug_message(global.question_list[1,0]);
	show_debug_message(global.question_list[1,1]);
	show_debug_message(global.question_list[1,2]);
	show_debug_message(global.question_list[1,3]);
	show_debug_message(global.question_list[1,4]);

	show_debug_message(global.question_list[2,0]);
	show_debug_message(global.question_list[2,1]);
	show_debug_message(global.question_list[2,2]);
	show_debug_message(global.question_list[2,3]);
	show_debug_message(global.question_list[2,4]);

	show_debug_message(global.question_list[3,0]);
	show_debug_message(global.question_list[3,1]);
	show_debug_message(global.question_list[3,2]);
	show_debug_message(global.question_list[3,3]);
	show_debug_message(global.question_list[3,4]);
	*/
	global.qcount++;
}