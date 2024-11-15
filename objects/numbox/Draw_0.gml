/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_font(InupiaqNumbers);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
if correct == 1 draw_set_color(c_red);
else if gamecontroller.clear_timer > 0 and gamecontroller.totalAmount == gamecontroller.setnumber draw_set_color(c_green)
else draw_set_color(c_white);
