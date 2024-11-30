// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function numbox_change(_id,_dir){
	with _id{
		if _dir == "add"{
			if object_get_name(object_index) = "numbox4" and room = number_operations and (gamecontroller.mathop == "plus" or gamecontroller.mathop == "minus"){
				if number == 0 number = 1
				else number = 0;
			}

			else if mouse_y < y+72{
				if number < 15 number += 5;
				else number = 0;
			}

			else {
				if number < 19 number += 1;
				else number = 0;
			}			
		}
		
		else {
			if object_get_name(object_index) = "numbox4" and room = number_operations and (gamecontroller.mathop == "plus" or gamecontroller.mathop == "minus"){
				if number > 0 number = 0;
				else number = 1;
			}

			else if mouse_y < y+72{
				if number > 5 number -= 5;
				else if number == 0 number = 15;
				else number = 0;
			}

			else {
				if number > 0 number -=1;
				else number = 19;
			}			
		}
		
		gamecontroller.setnumber = 0 
		if instance_exists(numbox4) gamecontroller.setnumber += numbox4.number*160000;
		if instance_exists(numbox3) gamecontroller.setnumber += numbox3.number*8000;
		if instance_exists(numbox2) gamecontroller.setnumber += numbox2.number*400;
		if instance_exists(numbox1) gamecontroller.setnumber += numbox1.number*20;
		gamecontroller.setnumber += numbox0.number;		
		
	}
}