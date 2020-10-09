/// @description Insert description here
room_speed = 60; // Sets game to 60fps
//alarm[0] = 1; // Center window

ini_open("game_settings.ini");
global.displayWidth = ini_read_real("settings", "width", 1280);
global.displayHeight = ini_read_real("settings", "height", 720);
// Options
global.volume =  ini_read_real("settings", "volume", .5);
//global.mouse_sens = ini_read_real("settings", "mouse", .6);
ini_close();
global.destroy_all = false;

quit = instance_create_depth(room_width/2,950,-10,obj_level_button);
quit.str = "Back";
quit.back1 = true;

// resolution
res = instance_create_depth(room_width/2 -400,400,-10,obj_level_button);
res.image_xscale = 2;
res.image_yscale = 2;
res.sprite_index = green_button;
res.str = "Resolution";
res.resolution = true;

res0 = instance_create_depth(room_width/2 -400,500,-10,obj_level_button);
res0.image_xscale = 2;
res0.image_yscale = 2;
res0.str = "Fullscreen";
res0.resolution = true;

res1 = instance_create_depth(room_width/2 -400,600,-10,obj_level_button);
res1.image_xscale = 2;
res1.image_yscale = 2;
res1.str = "1920x1080";
res1.resolution = true;

res2 = instance_create_depth(room_width/2 -400,700,-10,obj_level_button);
res2.image_xscale = 2;
res2.image_yscale = 2;
res2.str = "1280x720";
res2.resolution = true;

res3 = instance_create_depth(room_width/2 -400,800,-10,obj_level_button);
res3.image_xscale = 2;
res3.image_yscale = 2;
res3.str = "640x360";
res3.resolution = true;

vol1 = instance_create_depth(room_width/2+400,500,-10,obj_level_button);
vol1.image_xscale = 2;
vol1.image_yscale = 2;
vol1.str = "Up";
vol1.volume = true;

// volume
vol0 = instance_create_depth(room_width/2+400,600,-10,obj_level_button);
vol0.image_xscale = 2;
vol0.image_yscale = 2;
vol0.sprite_index = yellow_button;
vol0.str = "Volume " + string(global.volume);
vol0.nohov = true;


vol2 = instance_create_depth(room_width/2+400,700,-10,obj_level_button);
vol2.image_xscale = 2;
vol2.image_yscale = 2;
vol2.str = "Down";
vol2.volume = true;


