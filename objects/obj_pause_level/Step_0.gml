/// @description Insert description here
// You can write your code in this editor
if global.destroy_pause{
	instance_destroy(exit1);
	instance_destroy(restart);
	instance_destroy(quit);
	instance_destroy(res);
	instance_destroy(res0);
	instance_destroy(res1);
	instance_destroy(res2);
	instance_destroy(res3);
	instance_destroy(vol0);
	instance_destroy(vol1);
	instance_destroy(vol2);
}

//vol0.str = "Volume " + string(global.volume);