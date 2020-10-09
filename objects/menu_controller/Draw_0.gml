/// @description Draw buttons

var i = 0;
repeat(buttons){
	draw_set_font(font_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	
	if (menu_index == i){
		draw_set_color(c_red);
	}
	draw_text(menu_x, menu_y + button_h*2*i, button[i]);
	i++;	
}

draw_set_color(c_ltgray);
draw_text(600, room_height-40 , "Navigate the menu with mouse clicks or arrow keys");
