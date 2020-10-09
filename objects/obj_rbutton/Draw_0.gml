/// @description Insert description here
draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

draw_sprite_ext(button_hit, image_index, x,y, image_xscale, image_yscale, image_angle, image_blend, white_alpha)

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_font(font_score720);
if image_xscale == 2{
	draw_text_ext_transformed(x-215,y-35,str, 40, 438, 1, 1, image_angle);
}
else{
	draw_text_ext_transformed(x-535,y-35,str, 40, 1080, 1, 1, image_angle);
}
draw_set_font(font_score1080);
draw_set_halign(fa_left);
draw_set_color(c_white);

