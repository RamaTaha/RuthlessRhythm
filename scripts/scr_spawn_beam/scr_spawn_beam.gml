randX = random_range(70, room_width/2-100);
randY = random_range(room_width/2+70+100, room_width-70);

met4 = instance_create_depth(randX,538,10,obj_beam);
met4 = instance_create_depth(randY-70,538,10,obj_beam);