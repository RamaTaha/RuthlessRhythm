/// @description Insert description here
room_speed = 60; // Sets game to 60fps
alarm[0] = 1; // Center window

obj_title.image_xscale = 15;
obj_title.image_yscale = 15;
ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);
// Options
global.volume =  ini_read_real("settings", "volume", .5);
//global.mouse_sens = ini_read_real("settings", "mouse", .6);
ini_close();


// Fixes a problem with looping song
menu_song1 = global.song1;





menu_x = room_width/2;
menu_y = room_height/2-100;
button_h = 32;

// buttons
button[0] = "New Game";
button[1] = "Pick Level";
button[2] = "View Highscores";
button[3] = "Options";
button[4] = "Tutorial";
button[5] = "Credits";
button[6] = "Quit Game";

buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;







/*
quit = instance_create_depth(room_width/2+600,850,-10,obj_level_button);
quit.str = "Quit";
quit.quit = true;

// resolution
res = instance_create_depth(room_width/2 -600,450,-10,obj_level_button);
res.image_xscale = 1;
res.image_yscale = 1;
res.sprite_index = green_button;
res.str = "Resolution";
res.resolution = true;

res0 = instance_create_depth(room_width/2 -600,500,-10,obj_level_button);
res0.image_xscale = 1;
res0.image_yscale = 1;
res0.str = "Fullscreen";
res0.resolution = true;

res1 = instance_create_depth(room_width/2 -600,550,-10,obj_level_button);
res1.image_xscale = 1;
res1.image_yscale = 1;
res1.str = "1920x1080";
res1.resolution = true;

res2 = instance_create_depth(room_width/2 -600,600,-10,obj_level_button);
res2.image_xscale = 1;
res2.image_yscale = 1;
res2.str = "1280x720";
res2.resolution = true;

res3 = instance_create_depth(room_width/2 -600,650,-10,obj_level_button);
res3.image_xscale = 1;
res3.image_yscale = 1;
res3.str = "640x360";
res3.resolution = true;

// volume
vol0 = instance_create_depth(room_width/2+600,500,-10,obj_level_button);
vol0.image_xscale = 1;
vol0.image_yscale = 1;
vol0.sprite_index = yellow_button;
vol0.str = "Volume " + string(global.volume);
vol0.nohov = true;

vol1 = instance_create_depth(room_width/2+600,550,-10,obj_level_button);
vol1.image_xscale = 1;
vol1.image_yscale = 1;
vol1.str = "Up";
vol1.volume = true;

vol2 = instance_create_depth(room_width/2+600,600,-10,obj_level_button);
vol2.image_xscale = 1;
vol2.image_yscale = 1;
vol2.str = "Down";
vol2.volume = true;

*/

/*
global.question_list = scr_questions();
global.lvl1_score = 50;
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