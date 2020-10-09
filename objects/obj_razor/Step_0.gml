/// @description Insert description here

y+=6;

if (x <= 0){
	razor_direction = "right";
}
else if (x >= room_width){
	razor_direction = "left"	
}

if (razor_direction == "right"){
	x+=15;	
	image_angle-=8;
}
else{
	x-=15;	
	image_angle+=8;
}
