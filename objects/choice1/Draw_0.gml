if gamecontroller.can_click == true and mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id){
	draw_sprite(choice_press,0,x,y)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(x,y,say,c_gray,c_gray,c_gray,c_gray,1);
}

else {
	draw_self();
	draw_set_font(Words);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if right = 0 draw_text_color(x,y,say,c_white,c_white,c_white,c_white,1);
	else if right = 1 draw_text_color(x,y,say,c_lime,c_lime,c_lime,c_lime,1);
	else if right = 2 draw_text_color(x,y,say,c_red,c_red,c_red,c_red,1);
}