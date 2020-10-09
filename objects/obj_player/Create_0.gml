/// @description Create dragon
global.invulnerable = false;
//global.player_hp = 5;

// Invulnerability settings
inv_timer = 0;
inv_timer_max = 120; // How long to stay invulnerable
flash_white = false;
white_alpha = 0;

// Breath attack settings
fire_timer = 0; // Setup for timer
fire_timer_max = 6; // How many frames we wait to fire
enable_fire = true; // Can we fire

// Position dragon
y = room_height-80;

// Depth
depth = 3

