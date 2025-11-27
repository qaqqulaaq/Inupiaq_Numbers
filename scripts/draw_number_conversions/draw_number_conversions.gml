// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_number_conversions(){
	for (var _i = 0; _i < array_length(linex); _i++){
		draw_rectangle_color(linex[_i]-5,liney[_i]-5,linex[_i]+5,liney[_i]+5,c_red,c_red,c_red,c_red,false);
	}
			
	if not kaktovik{
		draw_sprite(spr_numentry,0,room_width*3 div 5, 550);
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_set_font(Words_48)
			
		if answered {
			if totalAmount = setnumber draw_set_color(c_green);
			else if answered draw_set_color(c_red);
			draw_text(room_width*3 div 5,550,string(totalAmount));
		}
			
		else {
		draw_set_color(c_white);
		draw_text(room_width*3 div 5,550,string(setnumber));
		}
	}
}