// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_answers(level) 
{


//Creates the empty list for random words	
	var _numlist
//Picks a random number for the first word
	switch(level)
	{
		case 1: _numlist = loadChoice([0,0,0,0,0,1]); break;
		case 2: _numlist = loadChoice([0,0,0,0,1,1]); break;
		case 3: _numlist = loadChoice([0,0,1,1,0,0]); break;
		case 4: _numlist = loadChoice([0,0,0,1,0,1]); break;
		case 5: _numlist = loadChoice([0,0,1,0,1,0]); break;
		case 6: _numlist = loadChoice([0,1,0,1,0,1]); break;
		case 7: _numlist = loadChoice([1,0,1,0,1,0]); break;
	}
	
	

//Sets the correct word, shuffles the words and assigns them to the choices
	question.say = "Find the word that means\n" + array_pop(_numlist);
	test.correct_word = _numlist[0];
	_numlist = array_shuffle(_numlist);
	choice1.say = _numlist[0];
	choice2.say = _numlist[1];
	choice3.say = _numlist[2];
	choice4.say = _numlist[3];
}