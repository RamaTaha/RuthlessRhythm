/// @description Start song

global.laser_timer = 0;
global.laser_spawn = false;

global.circle_timer = 0;
global.circle_spawn = false;

global.beam_timer = 0;
global.beam_spawn = false;

global.drag_timer = 0;
global.drag_spawn = false;

global.razor_timer = 0;
global.razor_spawn = false;

global.power_timer = 0;
global.power_spawn = false;

global.meteor_timer= 0;
global.meteor_spawn = false;

global.recent_combo = .5;
if room == level1{
	global.song1 = audio_play_sound(song1, 5, false);
}
else if room == level2{
	global.song1 = audio_play_sound(song2, 5, false);
}
else if room == level3{
	global.song1 = audio_play_sound(song3, 5, false);
}
else if room == level4{
	global.song1 = audio_play_sound(song4, 5, false);
}
audio_sound_set_track_position(global.song1, 0);

// For meteors
timer = 0;
timer_max = 8;
