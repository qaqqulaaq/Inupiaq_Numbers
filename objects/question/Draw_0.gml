draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if test.can_click == true draw_set_font(EngWords);
else draw_set_font(Words);
draw_text(x,y,say);
