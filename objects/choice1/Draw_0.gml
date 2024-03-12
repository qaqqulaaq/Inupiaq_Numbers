draw_self();
draw_set_font(Words);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if right = 0 draw_text_color(x,y,say,c_white,c_white,c_white,c_white,1);
else if right = 1 draw_text_color(x,y,say,c_green,c_green,c_green,c_green,1);
else if right = 2 draw_text_color(x,y,say,c_red,c_red,c_red,c_red,1);