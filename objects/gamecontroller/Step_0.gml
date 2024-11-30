/// @description Controls
// You can write your code in this editor


if helpmode and (keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any)){
	if page == 0 page++
	else {helpmode = false; page = 0;}
}

else if keyboard_check_pressed(vk_escape) room_goto(main_menu);

else if keyboard_check_pressed(vk_f1) or (instance_position(mouse_x,mouse_y,helpbutton) and mouse_check_button_pressed(mb_left))  help();

else if keyboard_check_pressed(vk_enter) or (instance_position(mouse_x,mouse_y,nextbox) and mouse_check_button_pressed(mb_left)) proceed();

else if keyboard_check_pressed(vk_backspace) erase();

else if (keyboard_check_pressed(ord("1")) or (instance_position(mouse_x,mouse_y,choice1) and mouse_check_button_released(mb_left))) and room == vocab_multichoice with choice1 choosebox();
else if (keyboard_check_pressed(ord("2")) or (instance_position(mouse_x,mouse_y,choice2) and mouse_check_button_released(mb_left))) and room == vocab_multichoice with choice2 choosebox();
else if (keyboard_check_pressed(ord("3")) or (instance_position(mouse_x,mouse_y,choice3) and mouse_check_button_released(mb_left))) and room == vocab_multichoice with choice3 choosebox();
else if (keyboard_check_pressed(ord("4")) or (instance_position(mouse_x,mouse_y,choice4) and mouse_check_button_released(mb_left))) and room == vocab_multichoice with choice4 choosebox();

else if instance_position(mouse_x,mouse_y,wordbox) and mouse_check_button_released(mb_left) wordChooser(instance_position(mouse_x,mouse_y,wordbox).text);
else if instance_position(mouse_x,mouse_y,level_arrow) and mouse_check_button_pressed(mb_left) level_change(instance_position(mouse_x,mouse_y,level_arrow).dir_right);
else if instance_position(mouse_x,mouse_y,operation) and mouse_check_button_pressed(mb_left) {mathop = operation_change(mathop); reset();}

else if mouse_check_button(mb_left) draw_pen();
else if mouse_check_button(mb_right) draw_erase();