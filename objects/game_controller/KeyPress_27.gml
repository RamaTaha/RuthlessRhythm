/// @description Insert description here

if !instance_exists(obj_game_over){
	paused = !paused;
}
if(paused){
	instance_create_depth(0,0,-10,obj_pause_level);
	audio_pause_sound(global.song1);
	window_set_cursor(cr_arrow); // Hides cursor in game
	var offset = 0;
	//instance_create_depth(0,0,-10,obj_game_over);
	for(var i = 0; i < instance_count;i++){
		
		if (instance_find(all,i).sprite_index!= -1){
			
			if global.player_color == "blue" && instance_find(all, i).sprite_index == red_dragon{
				all_objects[i-offset,0] = blue_dragon;
			}
			else{
				all_objects[i-offset,0] = instance_find(all, i).sprite_index;
			}
			
			all_objects[i-offset,1] = instance_find(all, i).image_index;
			all_objects[i-offset,2] = instance_find(all, i).x;
			all_objects[i-offset,3] = instance_find(all, i).y;
			all_objects[i-offset,4] = instance_find(all, i).image_xscale;
			all_objects[i-offset,5] = instance_find(all, i).image_yscale;
			all_objects[i-offset,6] = instance_find(all, i).image_angle;
			all_objects[i-offset,7] = instance_find(all, i).image_blend;
			all_objects[i-offset,8] = instance_find(all, i).image_alpha;
		}
		else{
			offset++;	
		}
	}
    instance_deactivate_all(1);
	instance_activate_object(obj_level_button);
	
	//Background
	layer_vspeed("Background", 0);
}else if (!paused && !instance_exists(obj_game_over)){
	
	global.destroy_pause = true;
	instance_destroy(obj_pause_level);
	window_set_cursor(cr_arrow);
	audio_resume_sound(global.song1);
	window_set_cursor(cr_none);
    instance_activate_all();
	//instance_activate_object()
	layer_vspeed("Background", 5);
	
	all_objects = 0;
}