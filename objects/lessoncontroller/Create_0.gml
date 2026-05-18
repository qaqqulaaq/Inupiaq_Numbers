/// @description Insert description here
// You can write your code in this editor
timer = 0
progress = 0

word = [["a","tau","siq"],
		["mal",chr(289)+"uk"],
		["pi", chr(331) + "a","sut"],
		["si","sa","mat"],
		["tal","li","mat"],
		["qu","lit"],
		["a","ki","miaq"],
		["tal","li","mat ","mal",chr(289)+"uk"]]
fullword = ""
for (var i = 0; i < array_length(word[progress]); i++){
	fullword += word[progress][i];	
}


num= ["1",
	 "2",
	 "3",
	 "4",
	 "5",
	 "10",
	 "15",
	 "7"]

engword = ["One",
		   "Two",
		   "Three",
		   "Four",
		   "Five",
		   "Ten",
		   "Fifteen",
		   "Seven"]

star = ["*",
		"**",
		"***",
		"****",
		"*****",
		"*****\n*****",
		"*****\n*****\n*****",
		"*****\n**"]

instance_create_layer(0,0,"Instances",nextbox);

review = false;
reviewlist = [];
ind = 0