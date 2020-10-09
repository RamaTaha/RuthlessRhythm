/// @description  When the scores haven’t loaded, try again once per second
if (text2 == "")
{
    scr_get_score(player_name, 10);
    text1 = "Please check your internet connection...";
    alarm[1] = room_speed;
}