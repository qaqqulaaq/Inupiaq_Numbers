// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function erase(){
	with gamecontroller{
		if room == vocab_wordbuild{
			if array_length(word_array) > 0 {
				array_pop(word_array);
				if array_length(word_array) > 1 display_text = wordBuilder(word_array);
				else if array_length(word_array) == 1 display_text = word_array[0];
				else display_text = "";
			}
		}
		else if room == number_conversions or room = number_operations {linex = []; liney = []}	
	}
}