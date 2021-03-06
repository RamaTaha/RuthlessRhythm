/// @description Spawn lasers


// Makes sure you can't spawn a laser faster than ~.2 seconds
if (global.laser_timer >= 10){
global.laser_timer = 0;
global.laser_spawn = false;
}

// Makes sure you can't spawn a circle faster than ~.2 seconds
if (global.circle_timer >= 10){
global.circle_timer = 0;
global.circle_spawn = false;
}

// Makes sure you can't spawn a beam faster than ~.2 seconds
if (global.beam_timer >= 10){
global.beam_timer = 0;
global.beam_spawn = false;
}

// Makes sure you can't spawn a dragon faster than ~.2 seconds
if (global.drag_timer >= 10){
global.drag_timer = 0;
global.drag_spawn = false;
}

// Makes sure you can't spawn a razor faster than ~.2 seconds
if (global.razor_timer >= 10){
global.razor_timer = 0;
global.razor_spawn = false;
}

// Makes sure you can't spawn a powerup faster than ~.2 seconds
if (global.power_timer >= 10){
global.power_timer = 0;
global.power_spawn = false;
}

timer++;

track = audio_sound_get_track_position(global.song1)
if room == level1{
global.arr1 = [3.8,6.45,11.8,14.5,17.1,20.12,20.45,20.75,32.43,33.09,35.75,38.42,
39.75,45.45,45.81,46.17,48.15,48.51,48.87,53.41,53.77,54.13,62.75,62.94,63.10,64.07,64.42,
64.74,65.41,65.57,65.72,66.75,67.08,67.35,69.41,69.76,70.10,74.79,75.09,75.43,77.42,77.77,
78.09,85.44,85.78,86.10,88.09,88.42,88.74,90.75,91.08,91.43,96.09,96.42,96.77,97.41,97.59,97.74,
101.41,101.76,102.08,]
scr_laser_beat(track, global.arr1);

scr_razor_beat(track,[4,6.1,10,14.6,14.7,18.5,18.6,20,22,23,29.3,30,35,40,45,50,55,60,65,70,75,
80,85,90,95,100,105,110,115,120,125,130]);

scr_circle_beat(track,[1.5,2.8,4,5.6,8.2,9.6,6.7,11,12.2,13.4,14.55,15.2,16.12,17.55,18.55,20.2,21.55,
22.45,25.1,25.3,27.9,27.4,27.9,29.3,32.42,33.2,35.75,36.8,38.5,39.85,43.21,44,46.4,46.7,48.9,52.2,52.5,52.6,54,
58,67,67.2,67.4,71.2,71.5,71.6,102.8,103]);

scr_power_beat(track,[25,34,40,50,70,80,100,130]);


if global.game_timer > 20.78 && global.game_timer < 25 {
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 30 && global.game_timer < 40 {
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 60 && global.game_timer < 80 {
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 100 && global.game_timer < 131.8 {
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}




// Level 1 ends at 2 minutes 11.8 seconds / 131.8 seconds later

if global.game_timer > 131.8 && !instance_exists(obj_game_over){
	win = instance_create_depth(0,0,-10,obj_win_level);
	instance_destroy();
	}
}
else if room == level2{
// Level 2 ends at 2 minutes 4 seconds / 124 seconds later

global.arr1 = [5.61,5.73,5.85,6.09,6.57,7.30,7.78,8.27,8.51,8.99,9.23,11.65,13.59,13.95,
14.31,16.01,16.49,16.97,17.94,18.43,21.33,21.81,22.29,22.77,23.25,23.73,24.21,24.69,25.17,
25.65,26.13,26.61,28.05,28.53,29.01,29.49,29.97,31.02,31.5,31.98,32.46,32.94,33.42,33.9,34.38,
34.86,35.34,35.82,36.3,36.78,37.26,37.74,38.22,38.7,39.18,61.5,61.99,62.71,63.44]

scr_circle_beat(track,[1.1,1.2,1.5,3.9,8,15.52,17.46,18.91,20.37,20.85,27.09,27.57]);

scr_razor_beat(track,[10,10.5,11,11.2,11.5,18.43,18.53]);

scr_power_beat(track,[14.2,14.6,15,16.5]);

scr_drag_beat(track,[19.39,19.50]);

if global.game_timer > 8.5 && global.game_timer < 10 {
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 14 && global.game_timer < 19 {
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 25 && global.game_timer < 31 {
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

scr_laser_beat(track, global.arr1);
if global.game_timer > 124  && !instance_exists(obj_game_over){

win = instance_create_depth(0,0,-10,obj_win_level);
instance_destroy();
}
}

// Follow this example for level 3 to do other level
// Order does not matter as long as global.arr1 is first
else if room == level3{
// Level 3 ends at 2 minutes / 120 seconds later

// Follow this exact format, use global.arr1 in another level then put global.arr1 in scr_laser_beat
// like below
global.arr1 = [4.1,8.1,12.1,16.1,20.1,24.1,28.1,32.1,36.1,40.1,44.1,48.1,
48.35,48.6,48.85,49.1,49.35,49.6,49.85,50.1,50.35,50.6,50.85,51.1,
51.35,51.6,51.85,64.1,64.7,65.2,65.7,66.2,66.7,67.2,67.7,68.2,68.7,
69.2,69.7,70.2,70.7,71.2,71.7,72.2,72.7,73.2,73.7,74.2,74.7,75.2,75.7,
76.2,76.7,77.2,77.7,78.2,78.7,79.2,79.7,80.2,80.7,81.2,81.7,82.2,82.7,
83.2,83.7,84.2,84.7,85.2,85.7,86.2,86.7,87.2,87.7,88.2,88.7,89.2,
89.7,90.2,90.7,91.2,91.7,92.2,92.7,93.2,93.7,94.2,94.7,95.2,95.7,96.2,
96.7,97.2,97.7,98.2,98.7,99.2,99.7,100.2,100.7,101.2,101.7,102.2,102.7,
103.2,103.7,104.2,104.7,105.2,105.7,106.2,106.7,107.2,107.7,108.2,108.7,109.2,
109.7,110.2,110.7,111.2,111.7,112.2,112.7,113.2,113.7,114.2,114.7,115.2,115.7,
116.2,116.7,117.2,117.7,118.2,118.7,119.2,119.7]

// Spawn red/blue laser to click to the beat
scr_laser_beat(track, global.arr1);

// Spawn exploding circles
scr_circle_beat(track,[4.1,8.1,12.1,16.1,20.1,24.1,28.1,32.1,36.1,40.1,44.1,48.1]);

// Spawn double laser beam
scr_beam_beat(track,[4.1,8.1,12.1,16.1,20.1,24.1,28.1,32.1,36.1,40.1,44.1,48.1]);

// Spawn enemy dragons
scr_drag_beat(track,[4.1]);

// Spawn razors at this time
scr_razor_beat(track,[4.1,8.1]);

// Spawn powerup at this time, only gives you points
scr_power_beat(track,[3]);

// Spawn meteors
// Below Example: If song is greater than 52 seconds and less than 96 seconds
// then spawn wave of meteors
if global.game_timer > 52 && global.game_timer < 96{
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 120  && !instance_exists(obj_game_over){
win = instance_create_depth(0,0,-10,obj_win_level);
instance_destroy();
}
}
else if room == level4{
// Level ends at 2 minutes / 120 seconds
scr_circle_beat(track,[10.8,14.45,18.0,21.6,25.2,28.7,30.5,33.2,33.7,35.9,36.3,36.7]);
scr_razor_beat(track,[33.2,33.7,35.9,36.3,36.7]);

global.arr1 = [1.85,5.45,9.05,12.6,16.2,19.8,23.35,27,32.3,35.9,119]

scr_laser_beat(track, global.arr1);
scr_beam_beat(track,[1.85,5.45,9.05,12.6,16.2,19.8,23.35,27,32.3,35.9]);
scr_drag_beat(track,[16.2,23.5,27.5,32.3,35.9]);
scr_power_beat(track,[3]);


if global.game_timer > 23.35 && global.game_timer < 30{
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 32.3{
if timer >= timer_max{
timer = 0;
scr_meteors();
}
}

if global.game_timer > 120  && !instance_exists(obj_game_over){
win = instance_create_depth(0,0,-10,obj_win_level);
instance_destroy();
}
}

global.game_timer = track;
global.laser_timer++;
global.circle_timer++;
global.beam_timer++;
global.drag_timer++;
global.razor_timer++;
global.power_timer++;
global.combo_timer++;
global.laser_score_timer++;
//show_debug_message(track);