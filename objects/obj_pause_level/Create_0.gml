/// @description Insert description here

global.destroy_pause = false;

exit1 = instance_create_depth(room_width/2 -600,850,-10,obj_level_button);	
exit1.str = "Main Menu";
exit1.main_menu = true;

restart = instance_create_depth(room_width/2,850,-10,obj_level_button);
restart.str = "Restart";
restart.restart = true;

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
vol0 = instance_create_depth(room_width/2+600,550,-10,obj_level_button);
vol0.image_xscale = 1;
vol0.image_yscale = 1;
vol0.sprite_index = yellow_button;
vol0.str = "Volume " + string(global.volume);
vol0.nohov = true;

vol1 = instance_create_depth(room_width/2+600,500,-10,obj_level_button);
vol1.image_xscale = 1;
vol1.image_yscale = 1;
vol1.str = "Up";
vol1.volume = true;

vol2 = instance_create_depth(room_width/2+600,600,-10,obj_level_button);
vol2.image_xscale = 1;
vol2.image_yscale = 1;
vol2.str = "Down";
vol2.volume = true;

