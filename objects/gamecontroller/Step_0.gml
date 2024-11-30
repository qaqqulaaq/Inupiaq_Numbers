/// @description Controls
// You can write your code in this editor

//cycles through helpmode

if helpmode and (keyboard_check_pressed(vk_anykey) or mouse_check_button_released(mb_any)){
	if page == 0 and room != vocab_multichoice page++
	else {helpmode = false; page = 0;}
}

else if not helpmode{
//goes to the main menu
	if keyboard_check_pressed(vk_escape) room_goto(main_menu);
	//activates the help screen
	else if keyboard_check_pressed(vk_f1) or (position_meeting(mouse_x,mouse_y,helpbutton) and mouse_check_button_released(mb_left))  help();
	//Enters the answer or moves to the next problem
	else if keyboard_check_pressed(vk_enter) or (position_meeting(mouse_x,mouse_y,nextbox) and mouse_check_button_pressed(mb_left)) proceed();
	//erases all of the lines in numbers or the last word in wordbuild
	else if keyboard_check_pressed(vk_backspace) or (position_meeting(mouse_x,mouse_y,eraser) and mouse_check_button_pressed(mb_left)) erase();
	//selects a choice in multichoice
	
	//changes the numbers in numbox
	else if position_meeting(mouse_x,mouse_y,numbox) and mouse_check_button_pressed(mb_left) numbox_change(instance_position(mouse_x,mouse_y,numbox),"add");
	else if position_meeting(mouse_x,mouse_y,numbox) and mouse_check_button_pressed(mb_right) numbox_change(instance_position(mouse_x,mouse_y,numbox),"minus");
	//activates the other assorted buttons
	else if position_meeting(mouse_x,mouse_y,wordbox) and mouse_check_button_released(mb_left) wordChooser(instance_position(mouse_x,mouse_y,wordbox).text);
	else if position_meeting(mouse_x,mouse_y,level_arrow) and mouse_check_button_pressed(mb_left) level_change(instance_position(mouse_x,mouse_y,level_arrow).dir_right);
	else if position_meeting(mouse_x,mouse_y,operation) and mouse_check_button_pressed(mb_left) {mathop = operation_change(mathop); reset();}
	//draws on the screen
	else if mouse_check_button(mb_left) and (room == number_conversions or room == number_operations) draw_pen();
	else if mouse_check_button(mb_right) and (room == number_conversions or room == number_operations) draw_erase();
	
	//Keyboard Check with ord appears to interact poorly with HTML, may need specific code for specific rooms
	else if room == vocab_multichoice{
		if (keyboard_check_pressed(ord("1"))) or (position_meeting(mouse_x,mouse_y,choice1) and mouse_check_button_released(mb_left)) with choice1 choosebox();
		else if (keyboard_check_pressed(ord("2"))) or (position_meeting(mouse_x,mouse_y,choice2) and mouse_check_button_released(mb_left)) with choice2 choosebox();
		else if (keyboard_check_pressed(ord("3"))) or (position_meeting(mouse_x,mouse_y,choice3) and mouse_check_button_released(mb_left)) with choice3 choosebox();
		else if (keyboard_check_pressed(ord("4"))) or (position_meeting(mouse_x,mouse_y,choice4) and mouse_check_button_released(mb_left)) with choice4 choosebox();
	}
}
