timer = 0

word = [["1. ", "a","tau","siq"],
		["2. ","mal",chr(289)+"uk"],
		["3. ","pi", chr(331) + "a","sut"],
		["4. ","si","sa","mat"],
		["5. ","tal","li","mat"],
		["6. ","it","chak","srat"],
		["7. ","tal","li","mat ","mal",chr(289)+"uk"],
		["8. ","tal","li","mat ","pi", chr(331) + "a","sut"],
		["9. ","qu","liŋ","ŋu","ġu","tai","ḷaq"],
		["10. ","qu","lit"],
		["11. ","qu","lit ","a","tau","siq"],
		["12. ","qu","lit ","mal",chr(289)+"uk"],
		["13. ","qu","lit ","pi", chr(331) + "a","sut"],
		["14. ","a","ki","mia","ġu","tai","ḷaq"],
		["15. ","a","ki","miaq"],
		["16. ","a","ki","miaq ", "a","tau","siq"],
		["17. ","a","ki","miaq ", "mal",chr(289)+"uk"],
		["18. ","a","ki","miaq ", "pi", chr(331) + "a","sut"],
		["19. ","i","ñuiñ","ña","ġu","tai","ḷaq"],
		["20. ","i","ñuiñ","ñaq"],
		["0. ","suit","chuq"]]
		
timing = [[60,10,20],				//1
		  [60,25],					//2
		  [60,15,15],				//3
		  [60,15,15],				//4
		  [60,20,15],				//5
		  [60,25,25],				//6
		  [60,10,10,40,25],			//7
		  [60,10,10,40,15,15],		//8
		  [60,15,15,15,15,30],		//9
		  [60,15],					//10
		  [60,15,25,15,25],			//11
		  [60,15,25,25],			//12
		  [60,15,25,15,15],			//13
		  [60,15,15,15,15,40,15],	//14
		  [60,15,15],			//15
		  [60,15,15,35,20,20],	//16
		  [60,15,15,40,25],		//17
		  [60,15,15,40,15,15],	//18
		  [60,25,25,25,25,25],		//19
		  [60,25,25],				//20
		  [60,25]]					//0
		
fullword = []
times = [[60]]

for (var i = 0; i < array_length(word);  i++){
	var _fullword = ""
	for (var j = 0; j < array_length(word[i]); j++){
		_fullword += word[i][j]
	}
	array_push(fullword, _fullword);
	
	var _snd = find_sound(i)
	array_push(times,[round(audio_sound_length(_snd) + 2) * game_get_speed(gamespeed_fps) +times[i][0]])
	
	for (var j = 0; j < array_length(timing[i]); j++){
		array_push(times[i],times[i][j]+timing[i][j])
	}
	
	
	//if i > 0 array_push(times,times[i-1] + (array_length(word[i-1])+8)*game_get_speed(gamespeed_fps)*0.25)
}

show_debug_message(string(times))