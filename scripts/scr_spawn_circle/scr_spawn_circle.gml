
x_pos = random_range(200, room_width-200);
y_pos = random_range(200, room_height-700);
//var color = argument2;

if global.circle_color == "green"{
	met1 = instance_create_depth(x_pos,y_pos,0,obj_ghole);
	met2 = instance_create_depth(x_pos+35,y_pos+15,0,obj_ghole);
	met3 = instance_create_depth(x_pos+45,y_pos+45,0,obj_ghole);
	met4 = instance_create_depth(x_pos+35,y_pos+75,0,obj_ghole);
	met5 = instance_create_depth(x_pos,y_pos+90,0,obj_ghole);
	met6 = instance_create_depth(x_pos-35,y_pos+75,0,obj_ghole);
	met7 = instance_create_depth(x_pos-45,y_pos+45,0,obj_ghole);
	met8 = instance_create_depth(x_pos-35,y_pos+15,0,obj_ghole);	
}
else if global.circle_color == "yellow"{
	met1 = instance_create_depth(x_pos+10,y_pos,0,obj_yhole);
	met2 = instance_create_depth(x_pos+45,y_pos+25,0,obj_yhole);
	met3 = instance_create_depth(x_pos+45,y_pos+55,0,obj_yhole);
	met4 = instance_create_depth(x_pos+25,y_pos+90,0,obj_yhole);
	met5 = instance_create_depth(x_pos-10,y_pos+90,0,obj_yhole);
	met6 = instance_create_depth(x_pos-35,y_pos+75,0,obj_yhole);
	met7 = instance_create_depth(x_pos-55,y_pos+45,0,obj_yhole);
	met8 = instance_create_depth(x_pos-30,y_pos+10,0,obj_yhole);
	
}
else{
	met1 = instance_create_depth(x_pos,y_pos,0,obj_phole);
	met2 = instance_create_depth(x_pos+35,y_pos+15,0,obj_phole);
	met3 = instance_create_depth(x_pos+45,y_pos+45,0,obj_phole);
	met4 = instance_create_depth(x_pos+35,y_pos+75,0,obj_phole);
	met5 = instance_create_depth(x_pos,y_pos+90,0,obj_phole);
	met6 = instance_create_depth(x_pos-35,y_pos+75,0,obj_phole);
	met7 = instance_create_depth(x_pos-45,y_pos+45,0,obj_phole);
	met8 = instance_create_depth(x_pos-35,y_pos+15,0,obj_phole);
}

met1.e1 = true;
met2.e2 = true;
met3.e3 = true;
met4.e4 = true;
met5.e5 = true;
met6.e6 = true;
met7.e7 = true;
met8.e8 = true;