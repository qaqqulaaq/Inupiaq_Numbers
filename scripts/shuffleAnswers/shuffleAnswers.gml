// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_answers(_level) 
{


//Creates the empty list for random words	
	var _numlist
//Picks a random number for the first word
	switch(_level)
	{
		case 1: _numlist = loadChoice([0,0,0,0,0,0],7); break;
				
		case 2: _numlist = loadChoice([0,0,0,0,1,1],19); break;
		
		case 3: _numlist = loadChoice([0,0,1,1,0,0],19); break;
		
		case 4: var _roll = irandom(1); 
				_numlist = loadChoice([0,0,_roll,_roll,abs(_roll - 1),abs(_roll - 1)],19); 
				break;
		
		case 5: _numlist = loadChoice([0,0,1,1,1,1],19); break;
		case 6: _numlist = loadChoice([0,1,0,1,0,1],19); break;
		case 7: _numlist = loadChoice([1,0,1,0,1,0],19); break;
		case 8: _numlist = loadChoice([1,1,1,1,1,1],30); break;
	}
	
	

//Sets the correct word, shuffles the words and assigns them to the choices
	
	if room = vocab_multichoice{
		question.say = "Find the word that means\n" + string_lower(array_pop(_numlist));
		test.correct_word = _numlist[0];
		_numlist = array_shuffle(_numlist);
		choice1.say = _numlist[0];
		choice2.say = _numlist[1];
		choice3.say = _numlist[2];
		choice4.say = _numlist[3];
	}
	
	else if room = vocab_wordbuild{
		question.say = "Build the word that means\n" + string_lower(array_pop(_numlist));
		test.correct_word = _numlist[0];
	}
}