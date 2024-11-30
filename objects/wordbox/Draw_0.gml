/// @description Insert description here
// You can write your code in this editor

draw_set_font(EngWords_small)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if not gamecontroller.answered and mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id){
	draw_sprite(spr_word_box,1,x,y)
	draw_text_color(x,y,text,c_gray,c_gray,c_gray,c_gray,1);
}

else{
	draw_sprite(spr_word_box,0,x,y)
	draw_text_color(x,y-2,text,c_white,c_white,c_white,c_white,1);
}