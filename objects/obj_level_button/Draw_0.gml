/// @description Insert description here
if !hover{
	draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
else if nohov || str == "Resolution"{
	draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
else{
	draw_sprite_ext(button_hit, image_index, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_font(font_score1080);
if image_xscale == 2{
	draw_text_ext_transformed(x,y-25,str, 40, 438, 1, 1, image_angle);
}
else{
	draw_text_ext_transformed(x,y-20,str, 40, 1080, 1, 1, image_angle);
}

draw_set_font(font_score1080);
draw_set_halign(fa_left);
draw_set_color(c_white);