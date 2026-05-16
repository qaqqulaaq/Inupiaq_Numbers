if not helpbutton.menuhelp {
	if position_meeting(mouse_x,mouse_y,self){
		if mouse_check_button_released(mb_left){
			switch say{
				case "Number Conversions": room_goto(number_conversions); break;
				case "Number Operations": room_goto(number_operations); break;
				case "Numbers to Words": room_goto(number_toword); break;
				case "Word Building\nVocabulary": room_goto(vocab_wordbuild); break;
				case "Multiple Choice\nVocabulary": room_goto(vocab_multichoice); break;
			}
		}
		
		if mouse_check_button(mb_left){
			if col > 155 col -= 10
		}
		
		else if col < 255 col += 10
	}
	
	else col = 255;
}
