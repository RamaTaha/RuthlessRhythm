/// @description Insert description here
// You can write your code in this editor
timer++;
if image_index <32 || image_index>37{
		mask_index = blue_laser_none;		
}
else{
		// Doesn't play more than once
		if (timer >= 10){
			timer = 0;
			audio_play_sound(sfx_laser, 5, false);
		}
		mask_index = laser_beam;			
}