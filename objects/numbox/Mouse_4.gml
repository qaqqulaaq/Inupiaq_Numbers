/// @description Insert description here
// You can write your code in this editor


if object_get_name(object_index) = "numbox4" and room = number_operations and (operation.mathop == "plus" or operation.mathop == "minus"){
	if number == 0 number = 1
	else number = 0
}

else if mouse_y < y+72{
	if number < 15 number += 5;
	else number = 0
}

else {
	if number < 19 number += 1;
	else number = 0
}

gamecontroller.setnumber = numbox4.number*160000 + numbox3.number*8000 + numbox2.number*400+numbox1.number*20+numbox0.number