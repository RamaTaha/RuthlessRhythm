/// @description Track menu movement
/*
if mouse_x >= x-sprite_width/2 && mouse_x <= x+sprite_width/2 
&& mouse_y >= y-sprite_height/2 && mouse_y <= y+sprite_height/2{
	
}
*/


menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;
if(menu_index <0) menu_index = buttons - 1;
if(menu_index > buttons -1) menu_index = 0;

if (mouse_x >= 840 && mouse_x <= 1080) && (mouse_y >= 446 && mouse_y <= 470) 
{
	menu_index = 0;	
}
else if (mouse_x >= 840 && mouse_x <= 1080) && (mouse_y >= 510 && mouse_y <= 530) {
	menu_index = 1;
}
else if (mouse_x >= 840 && mouse_x <= 1080) && (mouse_y >= 570 && mouse_y <= 600) {
	menu_index = 2;
}
else if (mouse_x >= 840 && mouse_x <= 1080) && (mouse_y >= 630 && mouse_y <= 670) {
	menu_index = 3;
}
else if (mouse_x >= 840 && mouse_x <= 1080) && (mouse_y >= 690 && mouse_y <= 730) {
	menu_index = 4;
}
else if (mouse_x >= 840 && mouse_x <= 1080) && (mouse_y >= 750 && mouse_y <= 790) {
	menu_index = 5;
}
else if (mouse_x >= 840 && mouse_x <= 1080) && (mouse_y >= 810 && mouse_y <= 850){
	menu_index = 6;
}


if (menu_index != last_selected && menu_index != -1){
	audio_play_sound(sfx_laser2, 1, false);
}
last_selected = menu_index;