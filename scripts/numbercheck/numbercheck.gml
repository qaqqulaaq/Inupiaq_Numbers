// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function numbercheck(_question){
	
	var _string = ""
	
	if instance_exists(numbox2) _string += chr(KN + numbox2.number)
	if instance_exists(numbox1) _string += chr(KN + numbox1.number)
	_string += chr(KN + numbox0.number)
	_string = string_trim_start(_string,[chr(KN)])
	if string_length(_string) == 0 _string = chr(KN)
	
	return _string == _question
}