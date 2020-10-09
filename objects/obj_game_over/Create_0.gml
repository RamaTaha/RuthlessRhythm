/// @description Insert description here
window_set_cursor(cr_arrow);
exit1 = instance_create_depth(room_width/2 -600,850,-10,obj_level_button);	
exit1.str = "Main Menu";
exit1.main_menu = true;

restart = instance_create_depth(room_width/2,850,-10,obj_level_button);
restart.str = "Restart";
restart.restart = true;

quit = instance_create_depth(room_width/2+600,850,-10,obj_level_button);
quit.str = "Quit";
quit.quit = true;
