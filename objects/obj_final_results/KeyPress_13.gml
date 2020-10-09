/// @description Send and view score

if !sent{
	if message == "" || message == " "{
		message = "No Name";
	}
	scr_send_score(message, global.total_score);
	sent = true;
}
global.message_name = message;
alarm[1] = 60;