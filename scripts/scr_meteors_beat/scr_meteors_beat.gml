var track = argument0;
var arr = argument1;

for (var i = 0; i < array_length_1d(arr); i++){

	if (track >= arr[i]  && track <= arr[i]+.1 && !global.meteor_spawn){
		global.meteor_timer = 0;
		global.meteor_spawn = true;
		scr_meteors();		
		
	}
}
