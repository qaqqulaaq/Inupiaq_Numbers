/// @description Insert description here
// You can write your code in this editor

if room == main_menu {
	if menuhelp and (keyboard_check_pressed(vk_anykey) or mouse_check_button_released(mb_any)) menuhelp = false;
	else if keyboard_check_pressed(vk_f1) or (position_meeting(mouse_x,mouse_y,helpbutton) and mouse_check_button_released(mb_left)) menuhelp = true;
}