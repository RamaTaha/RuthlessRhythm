// Player
global.invulnerable = false;
global.player_hp = 4;
global.player_color = "red";
global.lvl1_score = 0;
global.lvl2_score = 0;
global.lvl3_score = 0;
global.lvl4_score = 0;

global.lvl1_tscore = 0;
global.lvl2_tscore = 0;
global.lvl3_tscore = 0;
global.lvl4_tscore = 0;
global.total_score = 0;

// Laser
global.laser_spawn = false;
global.laser_timer = 0;
global.laser_color = "blue"
global.combo_timer = 0;
global.laser_score_timer = 0;
global.arr1 = [];

// Global timer
global.game_timer = 0;

// Circle
global.circle_spawn = false;
global.circle_timer = 0;
global.circle_color = "green";

// Beam
global.beam_spawn = false;
global.beam_timer = 0;

// Enemy Dragon
global.drag_spawn = false;
global.drag_timer = 0;
global.drag_direction = "left";

// Razor
global.razor_timer = 0;
global.razor_spawn = false;
global.razor_direction = "left";

// Powerup
global.power_timer = 0;
global.power_spawn = true;

// Combo
global.score_combo = 0;
global.recent_combo = .5;

global.check_rhythm = false;
global.keypress_timer = 0;

// Song
global.song1 = noone;

// Questions
global.question_list = noone;
global.started = false;
global.destroy_all = false;
global.qcount = 0;

// Player name
global.message_name = "";
show_debug_message("GLOBALS RESET");
// In room creation
//global.displayWidth
//global.displayHeight

//controller depth = 10;
// obj laser depth = 5;
// 1000 is behind everything, -1000 infront

//global.displayWidth for GUI
//room_width for coordinates

//draw_text(100, 30, "Score: " + string(asset_get_index("test_room")));

//draw_sprite_tiled(sprite_index, -1, x, y);

//x = lerp(mouse_x, x, .6);

//draw_sprite(red_dragon,-1,room_width/2, 100);

//var aspect = global.displayWidth/global.displayHeight;

// Change the font depending on the window size
/*
if window_get_fullscreen(){
	draw_set_font(font_score1080);
}
else if (global.displayWidth == 1920){
	draw_set_font(font_score1080);
}
else if (global.displayWidth == 1280){
	draw_set_font(font_score720);
}
else if (global.displayWidth == 640){
	draw_set_font(font_score360);
}
*/

//draw_sprite_ext(red_dragon, -1, x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)