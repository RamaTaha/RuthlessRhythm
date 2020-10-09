/// @description Type message
if !sent{
	if (string_length(keyboard_string)<limit) 
	    message = keyboard_string;
	else
	    keyboard_string = message;
}