
//draw_sprite_tiled(red_laser, -1, x, y);
//enemy = instance_create_depth(500,100, 0, obj_laser);
//global.displayWidth - room_width
if argument0 == "red"{
	object_set_sprite(obj_laser, red_laser);
}
else{
	object_set_sprite(obj_laser, blue_laser);
}
//gate = draw_sprite_ext(red_dragon, -1, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
enemy = instance_create_depth(320,-5, 2, obj_laser);
enemy = instance_create_depth(960,-5, 2, obj_laser);
enemy = instance_create_depth(1600,-5, 2, obj_laser);


left_gate = instance_create_depth(0,-5, 1, obj_gate);
left_gate.image_angle = 180;

right_gate = instance_create_depth(room_width,-5, 1, obj_gate);
right_gate.image_angle = 0;