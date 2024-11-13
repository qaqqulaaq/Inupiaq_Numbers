if mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id){
	draw_sprite(choice_press,0,x,y)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(EngWords);
	draw_text_color(x,y,say,c_gray,c_gray,c_gray,c_gray,1);
}

else {
	draw_self();
	draw_set_font(EngWords);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(x,y,say,c_white,c_white,c_white,c_white,1);
}