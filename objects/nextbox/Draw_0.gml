/// @description Insert description here
// You can write your code in this editor



if gamecontroller.answered or (room == lessons and lessoncontroller.timer < 9999) draw_sprite(sprite_index,1,x,y)
else if not (room == lessons and lessoncontroller.review) draw_sprite(sprite_index,0,x,y)