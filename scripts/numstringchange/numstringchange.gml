function numstringchange(_num){
	with gamecontroller{
		if _num == "del" {
			if string_length(string(setnumber)) > 0 
			{
				var _string = string(setnumber)
				_string = string_copy(_string,1,string_length(_string)-1);
				if string_length(_string) > 0 setnumber = real(_string);
				else setnumber = 0
			}
		}
		else if string_length(string(setnumber)) < 7 setnumber = real(string(setnumber)+string_digits(_num));
	}
}