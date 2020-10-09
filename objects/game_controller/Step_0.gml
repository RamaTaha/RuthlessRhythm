/// @description Every game frame

if !global.started{
	if count1 == 0{
		
		//var quests = scr_questions();
		
		
		if room == level1{
			scr_spawn_questions(global.question_list[0,0], global.question_list[0,1],global.question_list[0,2],global.question_list[0,3],global.question_list[0,4]);
		}
		else if room == level2{
			scr_spawn_questions(global.question_list[1,0], global.question_list[1,1],global.question_list[1,2],global.question_list[1,3],global.question_list[1,4]);
		}
		else if room == level3{
			scr_spawn_questions(global.question_list[2,0], global.question_list[2,1],global.question_list[2,2],global.question_list[2,3],global.question_list[2,4]);
		}
		else if room == level4{
			scr_spawn_questions(global.question_list[3,0], global.question_list[3,1],global.question_list[3,2],global.question_list[3,3],global.question_list[3,4]);
		}
		
		
		//show_debug_message("TEST CONTROLLER CREATED");
		//show_debug_message(global.question_list);
		count1++;
	}

}