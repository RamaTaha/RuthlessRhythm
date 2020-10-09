/// @description Insert description here
window_set_cursor(cr_arrow);
global.destroy_all = false;

exit2 = instance_create_depth(room_width/2 -400,850,-10,obj_level_button);	
exit2.str = "Main Menu";
exit2.main_menu = true;

quit1 = instance_create_depth(room_width/2+400,850,-10,obj_level_button);
quit1.str = "Quit";
quit1.quit = true;

message = "";
sent = false;
limit = 20;

cursor = "|";
delay = 20;
alarm[0] = delay;