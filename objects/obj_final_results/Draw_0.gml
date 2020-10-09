/// @description Insert description here

if !sent{
	draw_set_alpha(.4);
	draw_rectangle(0,0,room_width, room_height,0);
	draw_set_alpha(1)

	draw_set_font(font_score1080)
	draw_set_halign(fa_center);
	draw_set_colour(c_white);
	draw_text(room_width*.5, room_height*.5-400, "Type your name and press Enter to send your score");
	draw_text(room_width*.5, room_height*.5-300, message+cursor);
	draw_text(room_width*.5, room_height*.5-200, "Level 1 Total Score = " + string(global.lvl1_tscore));
	draw_text(room_width*.5, room_height*.5-100, "Level 2 Total Score = " + string(global.lvl2_tscore));
	draw_text(room_width*.5, room_height*.5, "Level 3 Total Score = " + string(global.lvl3_tscore));
	draw_text(room_width*.5, room_height*.5+100, "Level 4 Total Score = " + string(global.lvl4_tscore));
	draw_text(room_width*.5, room_height*.5+200, "Overall Score = " + string(global.total_score));
}
draw_set_halign(fa_left);