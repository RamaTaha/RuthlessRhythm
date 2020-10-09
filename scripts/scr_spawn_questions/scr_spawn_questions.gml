var question = argument0
var ans1 = argument1; // right answer
var ans2 = argument2;
var ans3 = argument3;
var ans4 = argument4;


list = ds_list_create();
ds_list_insert(list, 0,ans1);
ds_list_insert(list, 1,ans2);
ds_list_insert(list, 2,ans3);
ds_list_insert(list, 3,ans4);
ds_list_shuffle(list);
//show_debug_message(list[|0]);

c0 = instance_create_depth(room_width/2,100,0,obj_rbutton);
c1= instance_create_depth(260,300,0,obj_rbutton);
c2= instance_create_depth(730,300,0,obj_rbutton);
c3 = instance_create_depth(1200,300,0,obj_rbutton);
c4 = instance_create_depth(1670,300,0,obj_rbutton);

c0.sprite_index = button_hit;
c0.str = question;
c0.image_yscale = 3;
c0.image_xscale = 5;
c0.question = true;
		
c1.sprite_index = green_button;
c1.str = list[|0];

c2.sprite_index = blue_button;
c2.str = list[|1];

c3.sprite_index = red_button;
c3.str = list[|2];

c4.sprite_index = yellow_button;
c4.str = list[|3];

if c1.str = ans1{
	c1.correct = true;	
}
else if c2.str = ans1{
	c2.correct = true;	
}
else if c3.str = ans1{
	c3.correct = true;	
}
else{
	c4.correct = true;	
}