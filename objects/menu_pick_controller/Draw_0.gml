/// @description Insert description here
var i = 0;
repeat(buttons){
	draw_set_font(font_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	
	if (menu_index == i){
		draw_set_color(c_red);
	}
	if (button[i] == "Level 2"){
		
		if (global.unlock_lvl2){
			draw_text(menu_x, menu_y + button_h*2*i, button[i]);
		}
		else{
			draw_set_color(c_black);
			draw_text(menu_x, menu_y + button_h*2*i, button[i]);
			draw_set_color(c_ltgray);
		}
	}
	
	else if (button[i] == "Level 3"){
		if (global.unlock_lvl3){
			draw_text(menu_x, menu_y + button_h*2*i, button[i]);
		}
		else{
			draw_set_color(c_black);
			draw_text(menu_x, menu_y + button_h*2*i, button[i]);
			draw_set_color(c_ltgray);
		}
	}
	else if (button[i] == "Level 4"){
		if (global.unlock_lvl4){
			draw_text(menu_x, menu_y + button_h*2*i, button[i]);
		}
		else{
			draw_set_color(c_black);
			draw_text(menu_x, menu_y + button_h*2*i, button[i]);
			draw_set_color(c_ltgray);
		}
	}
	else{
		draw_text(menu_x, menu_y + button_h*2*i, button[i]);
	}
	
	i++;	
}

