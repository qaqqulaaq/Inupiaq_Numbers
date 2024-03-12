// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_answers(level) 
{


//Creates the empty list for random words	
	var ranword = [];
//Picks a random number for the first word
	switch(level)
	{
				case 2: var _numlist = [0, irandom(19), irandom(19)]; break;
		case 1: var _numlist = [0, 0, irandom(19)]; break;
		case 2: var _numlist = [0, irandom_range(1,19), 0]; break;
		case 3: var _numlist = [0, irandom(19), irandom(19)]; break;
		case 4: var _numlist = [irandom_range(1,19), 0, 0]; break;
		case 5: var _numlist = [irandom(19), 0, irandom(19)]; break;
		case 6: var _numlist = [irandom(19), irandom(19), 0]; break;
		case 7: var _numlist = [irandom(19), irandom(19), irandom(19)]; break;
	}
	
	
//Loads the first choice based on the english word and sets it as the correct word
	var _engword = assembler10(_numlist);
	ranword[0] = assembler20(_numlist);

//Asks the question based on the english word
	question.say = "Find the word that means\n" + _engword;
//Picks random words for the other three items, rerolling as necessary
	do ranword[1] = assembler20([0, _numlist[1], irandom(19)]);
	until ranword[1] != ranword[0];
	do ranword[2] = assembler20([0, irandom(19), _numlist[2]]);
	until ranword[2] != ranword[0] and ranword[2] != ranword[1];
	do ranword[3] = assembler20([0, irandom(19), irandom(19)]);
	until ranword[3] != ranword[0] and ranword[3] != ranword[1] and ranword[3] != ranword[2];
//Splits all of the words with a line break
	for(var _i = 0; _i<array_length(ranword);_i+= 1){
		var _temp = string_split(ranword[_i]," ",true);
		ranword[_i] = ""
		while array_length(_temp) > 1{
			if string_length(_temp[0]) + string_length(_temp[1]) + 1 <= 19{
				_temp[1] = _temp[0] + " " + _temp[1]
				array_delete(_temp,0,1)
			};
			else ranword[_i] += array_shift(_temp) + "\n"
		}
		ranword[_i] += array_shift(_temp)
	};
//Sets the correct word, shuffles the words and assigns them to the choices
	test.correct_word = ranword[0];
	ranword = array_shuffle(ranword);
	choice1.say = ranword[0];
	choice2.say = ranword[1];
	choice3.say = ranword[2];
	choice4.say = ranword[3];
}