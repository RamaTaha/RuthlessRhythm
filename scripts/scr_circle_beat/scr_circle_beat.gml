var track = argument0;
var arr = argument1;

for (var i = 0; i < array_length_1d(arr); i++){

	if (track >= arr[i]  && track <= arr[i]+.1 && !global.circle_spawn){
		global.circle_timer = 0;
		global.circle_spawn = true;
		scr_spawn_circle();		
		if global.circle_color == "green"{
			global.circle_color = "pink"
		}
		else if global.circle_color == "pink"{
			global.circle_color = "yellow"
		}
		else{
			global.circle_color = "green"
		}
	}
}
