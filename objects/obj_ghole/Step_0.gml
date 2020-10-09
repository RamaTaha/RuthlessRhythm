/// @description Insert description here
// You can write your code in this editor
/*
image_xscale += .03;
image_yscale += .03;
move_towards_point(-1000, 3000, 6.5);
image_angle = 25;
*/

if e1{
	y-=speedC;
}
else if e2{
	x+=speedC-slowX;
	y-=speedC-slowY;
}
else if e3{
	x+=speedC;
}
else if e4{
	x+=speedC-slowX;
	y+=speedC-slowY;
}
else if e5{
	y+=speedC;
}
else if e6{
	x-=speedC-slowX;
	y+=speedC-slowY;
}
else if e7{
	x-=speedC;
}
else if e8{
	x-=speedC-slowX;
	y-=speedC-slowY;
}
