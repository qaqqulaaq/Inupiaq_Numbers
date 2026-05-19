draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Words_24);


if room == lessons and lessoncontroller.timer < 30{
	if lessoncontroller.timer > 20 draw_sprite_part(sprite_index,0,0,0,sprite_width,min(sprite_height,(lessoncontroller.timer-20)*20),x-sprite_xoffset,y-sprite_yoffset)
}

else if right == 0{
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
		if alpha < MAX_ALPHA {
			alpha += 0.01
		}
	}

	else if alpha > 0 {
		alpha -= 0.01	
	}
	
	draw_sprite_ext(choice_box_halo,0,x,y,1,1,0,c_white,alpha)	
}

else{
	draw_self()
	if right = 1 {
		draw_text_color(x,y,say,c_lime,c_lime,c_lime,c_lime,1)
		draw_sprite(spr_correct,0,x+sprite_width div 2, y - sprite_height div 2)
	}
	else {
		draw_text_color(x,y,say,c_red,c_red,c_red,c_red,1)
		draw_sprite(spr_incorrect,0,x+sprite_width div 2, y - sprite_height div 2)
	}
}




//if not gamecontroller.answered and mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id){
//	draw_sprite(choice_press,0,x,y)
//	draw_set_halign(fa_center);
//	draw_set_valign(fa_middle);
//	draw_text_color(x,y,say,c_gray,c_gray,c_gray,c_gray,1);
//}

//else {
//	draw_self();
//	draw_set_font(Words_24);
//	draw_set_halign(fa_center);
//	draw_set_valign(fa_middle);
//	if right = 0 draw_text_color(x,y,say,c_white,c_white,c_white,c_white,1);
//	else if right = 1 draw_text_color(x,y,say,c_lime,c_lime,c_lime,c_lime,1);
//	else if right = 2 draw_text_color(x,y,say,c_red,c_red,c_red,c_red,1);
//}