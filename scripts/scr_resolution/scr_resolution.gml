// Set resolution we want to display

var displayWidth = global.displayWidth; // display_get_width();
var displayHeight = global.displayHeight; //display_get_height();


if displayWidth == display_get_width(){
	window_set_fullscreen(true);
}


//room_width = global.displayWidth;
//room_height = global.displayHeight;

// Set size of GUI
display_set_gui_size(displayWidth, displayHeight);

// Set size of game window
window_set_size(displayWidth, displayHeight);

/*
// Set the resolution
var baseWidth = 1280;
var baseHeight = 720;

// Determine the aspect ratio
var aspect = baseWidth/baseHeight;

// Work out the adjusted height and width
if (displayWidth >= displayHeight)
{
	var height = min(baseHeight, displayHeight);
	var width = height*aspect;
}
*/

// Resize application surface to adjusted values
surface_resize(application_surface, displayWidth, displayHeight);
