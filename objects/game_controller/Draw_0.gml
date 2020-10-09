/// @description Score
//display_set_gui_size(global.displayWidth, global.displayHeight); //MAYBE TURN ON
draw_set_halign(fa_right); // Set alignment to right
draw_set_font(font_score1080);
//draw_text(room_width, 0, "Width: " + string(global.displayWidth));
draw_text(room_width-20, 0, "Health: " + string(global.player_hp));


if room == level1{
	draw_text(room_width-20, 60, "Score: " + string(global.lvl1_score)); 
}
else if room == level2{
	draw_text(room_width-20, 60, "Score: " + string(global.lvl2_score)); 
}
else if room == level3{
	draw_text(room_width-20, 60, "Score: " + string(global.lvl3_score)); 
}
else if room == level4{
	draw_text(room_width-20, 60, "Score: " + string(global.lvl4_score)); 
}
draw_text(room_width-20, 120, "Rhythm Counter: " + string(global.score_combo)); 
draw_text(room_width-20, 180, "Level: " + string(room-1)); 
draw_text(room_width-20, 240, "Time: " + string(global.game_timer)); 

//draw_text(room_width, 100, "Health: " + string(room_width)); 
draw_set_halign(fa_left); // Reset alignment to left
// Lives
//draw_sprite(sprLives, 0, 50,70*aspect);

//draw_text(80, 53*aspect, "Lives: " + string(global.hp));

if paused{
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "Game Paused ");
	for (var i =0; i<array_height_2d(all_objects);i++){
		draw_sprite_ext(all_objects[i,0],all_objects[i,1],all_objects[i,2],
		all_objects[i,3],all_objects[i,4],all_objects[i,5],all_objects[i,6],
		all_objects[i,7],all_objects[i,8] / 2);
	}
	draw_set_halign(fa_left);
	
}

if !global.started{
	
	/*
	str = "this is a really long string gonna test if this works yup up up upddddddddddddd dddddddddddddddd dddddddddd ddddddddddd"
	str = "this is a test gggggg ggggggggggg ggggggg"
	str = global.question;
	
	// Add line break after 950 pixels and break word up if longer than 30 characters
	str_fix = scr_text_fix(str, string_width(str)/2, "\n", 30);
	
	//str_width = string_width_ext(str, 40, 900);
	//str_height = string_height_ext(str, 40, 600);
	
	
	str_width = string_width(str_fix);
	str_height = string_height_ext(str_fix, 95, string_width(str)/2);
	
	
	draw_set_color(c_black);
	draw_rectangle(room_width/2, 100, str_width, str_height,0);
	draw_set_color(c_white);
	draw_text(room_width/2,100,str_fix);

	*/
}