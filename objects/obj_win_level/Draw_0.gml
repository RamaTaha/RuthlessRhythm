/// @description 

draw_set_font(font_score1080)
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text(room_width*.5, room_height*.5-200, "You Win!")
if room == level1{
	draw_text(room_width*.5, room_height*.5- 100, "Score = " + string(global.lvl1_score));
	draw_text(room_width*.5, room_height*.5, "Lives Left = " + string(global.player_hp) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 100, "Rhythm Counter = " + string(global.score_combo) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 200, "Total Score = " + string(global.lvl1_tscore));
}
else if room == level2{
	draw_text(room_width*.5, room_height*.5-100, "Score = " + string(global.lvl2_score));
	draw_text(room_width*.5, room_height*.5, "Lives Left = " + string(global.player_hp) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 100, "Rhythm Counter = " + string(global.score_combo) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 200, "Total Score = " + string(global.lvl2_tscore));
}
else if room == level3{
	draw_text(room_width*.5, room_height*.5-100, "Score = " + string(global.lvl3_score));
	draw_text(room_width*.5, room_height*.5, "Lives Left = " + string(global.player_hp) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 100, "Rhythm Counter = " + string(global.score_combo) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 200, "Total Score = " + string(global.lvl3_tscore));
}
else if room == level4{
	draw_text(room_width*.5, room_height*.5- 100, "Score = " + string(global.lvl4_score));
	draw_text(room_width*.5, room_height*.5, "Lives Left = " + string(global.player_hp) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 100, "Rhythm Counter = " + string(global.score_combo) + " * " + "50");
	draw_text(room_width*.5, room_height*.5+ 200, "Total Score = " + string(global.lvl4_tscore));
	
}
draw_set_halign(fa_left);


draw_set_alpha(.4);
draw_rectangle(0,0,room_width, room_height,0);
draw_set_alpha(1)
