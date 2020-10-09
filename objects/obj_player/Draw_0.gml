/// @description Draw dragon red/blue
if global.player_color == "red"{
	draw_sprite_ext(red_dragon, -1, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
else{
	draw_sprite_ext(blue_dragon, -1, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
draw_sprite_ext(hurt_dragon, image_index, x,y, image_xscale, image_yscale, image_angle, image_blend, white_alpha)