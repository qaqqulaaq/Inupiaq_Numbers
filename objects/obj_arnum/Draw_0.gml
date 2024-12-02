draw_set_font(Words_20)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if not gamecontroller.answered and mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id){
	draw_sprite(spr_arnum_box,1,x,y)
	draw_text_color(x+24,y+24,num,c_gray,c_gray,c_gray,c_gray,1);
}

else{
	draw_sprite(spr_arnum_box,0,x,y)
	draw_text_color(x+24,y+22,num,c_white,c_white,c_white,c_white,1);
}