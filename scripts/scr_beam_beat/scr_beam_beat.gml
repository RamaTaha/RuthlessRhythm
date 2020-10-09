var track = argument0;
var arr = argument1;

for (var i = 0; i < array_length_1d(arr); i++){

	if (track >= arr[i]-.5  && track <= arr[i]-.5+.1 && !global.beam_spawn){
		global.beam_timer = 0;
		global.beam_spawn = true;
		scr_spawn_beam();		
		
	}
}
