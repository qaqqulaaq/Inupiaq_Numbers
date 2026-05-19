function controls_general(){
	if keyboard_check_pressed(vk_escape) or (position_meeting(mouse_x,mouse_y,back_button) and mouse_check_button_released(mb_left)) {
		if room == main_menu game_end()
		else room_goto(main_menu);
	}
	//activates the help screen
	else if keyboard_check_pressed(vk_f1) or (position_meeting(mouse_x,mouse_y,helpbutton) and mouse_check_button_released(mb_left))  help();
	//Enters the answer or moves to the next problem
	else if keyboard_check_pressed(vk_enter) or (position_meeting(mouse_x,mouse_y,nextbox) and mouse_check_button_pressed(mb_left)) proceed();
	else if position_meeting(mouse_x,mouse_y,level_arrow_left) and mouse_check_button_pressed(mb_left) level_change(instance_position(mouse_x,mouse_y,level_arrow_left).dir_right);
	else if position_meeting(mouse_x,mouse_y,operation) and mouse_check_button_pressed(mb_left) {mathop = operation_change(mathop); reset();}
	else if position_meeting(mouse_x,mouse_y,obj_convert) and mouse_check_button_pressed(mb_left) conv_change();
}