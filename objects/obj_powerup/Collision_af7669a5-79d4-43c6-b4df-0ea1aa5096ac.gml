/// @description Insert description here

audio_play_sound(sfx_powerup, 5, false);
if room == level1{
	global.lvl1_score+=50;	
}
else if room == level2{
	global.lvl2_score+=50;	
}
else if room == level3{
	global.lvl3_score+=50;	
}
else if room == level4{
	global.lvl4_score+=50;		
}
instance_destroy();


