/// @description Every game frame

x = clamp(lerp(mouse_x, x, .6), 0, room_width); // If resolution changes, keep dragon in screen
window_mouse_set(clamp(window_mouse_get_x(),35, global.displayWidth-35),clamp(window_mouse_get_y(),200,global.displayHeight-100))

if global.player_hp <= 0{
	//show_message("YOU LOSE");
	
	instance_create_depth(0,0,-10,obj_game_over);
	instance_destroy();	
	/*
	instance_create_depth(x-50,y-50,-1,objExplosionEffect);
	instance_create_depth(0,0,0,objGameOver);
	instance_destroy();	
	*/
}
if global.invulnerable{
	image_alpha = .60;	
	inv_timer++;
	if inv_timer >= inv_timer_max{
		global.invulnerable = false;
		image_alpha = 1;
		inv_timer = 0;
	}

}

// Flash white
if flash_white{
	if white_alpha > 0 {
		white_alpha -= .05;
	}
	else{
	 	flash_white = false;
		white_alpha = 0;
	}
}
