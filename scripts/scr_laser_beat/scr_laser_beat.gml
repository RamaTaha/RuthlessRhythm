var track = argument0;
var arr = argument1;

if global.check_rhythm{
	global.keypress_timer++;
}
if global.keypress_timer >=20{
	global.check_rhythm = false;
	global.keypress_timer = 0;
}

if keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_right){
	global.check_rhythm = true;
	global.keypress_timer = 1;
}
/*
if keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_right){
	if global.keypress_timer >= 10{
			global.keypress_timer = 0;
			global.recent_combo = track;
	}
		
	for (var i = 0; i < array_length_1d(arr); i++){
		if (abs(global.arr1[i] -global.recent_combo) <= .2) {
			global.arr1[i] = 0;
			if global.combo_timer >= 15{
				global.combo_timer = 0;
				global.score_combo++;
				//show_debug_message(string(global.arr1[i]));
				//show_debug_message(string(global.recent_combo));
				//show_debug_message(string(global.score_combo));
			}
		}
	}
	
	//show_debug_message(global.recent_combo );
		
}

*/

for (var i = 0; i < array_length_1d(arr); i++){
	//show_debug_message(array_length_1d(arr))
	//arr[i] - 1.8
	var lvl_speed = 0;
	if room == level4{
		lvl_speed = .5;
	}
	else{
		lvl_speed = 1.8;
	}
	
	if (track >= arr[i] - lvl_speed  && track <= arr[i]-lvl_speed+.1 && !global.laser_spawn){
		global.laser_timer = 0;
		global.laser_spawn = true;
		scr_spawn_laser(global.laser_color);	
		if global.laser_color == "red"{
			global.laser_color = "blue"
		}
		else{
			global.laser_color = "red"
		}
	}
	
	/*
	if ((track-global.arr1[i]) >= .2){
	//if (track >= arr[i]){
		global.arr1[i] = 0;	
		//show_debug_message(string(global.arr1));
	}
	*/

	
	/*
		
	if (abs(global.arr1[i] -global.recent_combo) <= .2) {
		global.arr1[i] = 0;	
		if global.combo_timer >= 20{
			global.combo_timer = 0;
			global.score_combo++;
			//show_debug_message(string(global.arr1));
			//show_debug_message(string(global.recent_combo));
			show_debug_message(string(global.score_combo));
		}
	}
	else if(track - global.arr1[i]) >=.21{
		global.arr1[i] = 0;	
	}
	*/
}
