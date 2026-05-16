draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Words_24);
	

	
if mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id){	
	var _col = make_colour_rgb(col,col,col)
	
	draw_sprite_ext(sprite_index,0,x,y,1,1,0,_col,1)
	draw_text_color(x,y,say,_col,_col,_col,_col,1);
}

else {
	draw_self()
	draw_text_color(x,y,say,c_white,c_white,c_white,c_white,1);
}
	
	
if position_meeting(mouse_x,mouse_y,self) {
	if alpha < 0.2 {
		alpha += 0.01
	}
}

else if alpha > 0 {
	alpha -= 0.01	
}
	
draw_sprite_ext(choice_box_halo,0,x,y,1,1,0,c_white,alpha)