/// @description scr_send_score(name,score)
/// @param name        name of the player
/// @param score    the achieved score
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2020-01-18
// Copyright:   Appsurd

var name = url_encode(base64_encode(string(argument0)));
var args = "name="+name+"&score="+string(argument1)+"&secret_key=1234";
http_post_string("http://ftp.ruthless.altervista.org/OnlineHighscores/addscore.php", args);