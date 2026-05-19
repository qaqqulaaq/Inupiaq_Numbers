function controls_main_menu(){
	if not helpbutton.menuhelp {
		if position_meeting(mouse_x,mouse_y,menu_choice) with instance_position(mouse_x,mouse_y,menu_choice){
			if mouse_check_button_released(mb_left){
				switch say{
					case "Numbers":

						with menu_choice{
							switch say{
								case "Introduction":
								case "Numbers":
								case "Vocabulary":
									set_x = room_width div 3;
									set_pressed = false;
									break;
								
								default: instance_destroy();
							}
						}
						set_pressed = true;
						menu_load(["Conversions","Operations","Numbers to Words"]);
						break;
					
					case "Vocabulary":
						with menu_choice{
							switch say{
								case "Introduction":
								case "Numbers":
								case "Vocabulary":
									set_x = room_width div 3;
									set_pressed = false;
									break;
								
								default: instance_destroy();
							}
						}
						set_pressed = true;
						menu_load(["Multiple Choice","Word Building","Numbers to Words"]);
						break;

					case "Introduction": room_goto(overview); break;	
					case "Conversions": room_goto(number_conversions); break;
					case "Operations": room_goto(number_operations); break;
					case "Numbers to Words": room_goto(number_toword); break;
					case "Word Building": room_goto(vocab_wordbuild); break;
					case "Multiple Choice": room_goto(vocab_multichoice); break;
				}
			}
		
			if mouse_check_button(mb_left){
				if col > MIN_COL col -= 25
			}
		
			else if col < 255 col += 25
		}
	}
}