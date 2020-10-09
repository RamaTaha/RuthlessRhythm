/// @description Game over
/*
draw_set_alpha(.6);
draw_set_colour(c_ltgray);
draw_rectangle(0,0,room_width/2, room_height/2,0);
draw_set_alpha(1);
//draw_set_font(
draw_set_font(font_score1080);
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text(room_width*.5, room_height*.5, "GAME OVER");
draw_set_halign(fa_left);
*/

draw_set_alpha(.4);
draw_rectangle(0,0,room_width, room_height,0);
draw_set_alpha(1)

draw_set_font(font_score1080)
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text(room_width*.5, room_height*.5, "GAME OVER")
draw_set_halign(fa_left);
