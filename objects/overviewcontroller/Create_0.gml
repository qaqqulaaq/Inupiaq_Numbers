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
		
timing = [[10,30,10]
			]
		
fullword = []
times = [0]

for (var i = 0; i < array_length(word);  i++){
	var _fullword = ""
	for (var j = 0; j < array_length(word[i]); j++){
		_fullword += word[i][j]
	}
	array_push(fullword, _fullword);
	if i > 0 array_push(times,times[i-1] + (array_length(word[i-1])+8)*game_get_speed(gamespeed_fps)*0.25)
}