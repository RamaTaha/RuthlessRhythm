/// @description  Draw the highscores if available
draw_set_colour(c_white);
if (text1 == "Ready")
{
	if room == menu{
		draw_text_highscore(room_width/2-250, 350, "", "Name", "Score", string(text2), player_name, c_green);
	}
	else if room == final_results{
		draw_text_highscore(room_width/2-250, 250, "", "Name", "Score", string(text2), player_name, c_green);
	}
}
else
{
	if room == menu{
		draw_text(room_width/2-250, 350, text1);
	}
	else if room == final_results{
		draw_text(room_width/2-250, 250, text1);
	}
}