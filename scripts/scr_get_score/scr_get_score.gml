/// @description scr_get_scores(name,no_lines)
/// @param name            name of the player
/// @param no_lines        the number of scores you want to display (generally 10 is fine)
//
// Script:      Get the highscore list from the database in Altervista
// Date:        2020-01-18
// Copyright:   Appsurd

var name = url_encode(base64_encode(string(argument0)));
var args = "name="+name+"&no_lines="+string(argument1)+"&secret_key=1234";
get_highscores = http_post_string("http://ftp.ruthless.altervista.org/OnlineHighscores/display.php", args);