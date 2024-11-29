/// @description Deletes Word

if room = vocab_wordbuild{
	if array_length(word_array) > 0 {
		array_pop(word_array);
		if array_length(word_array) > 1 display_text = wordBuilder(word_array);
		else if array_length(word_array) == 1 display_text = word_array[0];
		else display_text = "";
	}
}