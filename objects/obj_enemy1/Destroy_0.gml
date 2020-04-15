/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39261F79
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)dropCheck = floor(random_range(1, 10 + 1));$(13_10)$(13_10)if (dropCheck == 1) {$(13_10)	instance_create(x,y,obj_health);$(13_10)}"
/// @description Insert description here
// You can write your code in this editor

dropCheck = floor(random_range(1, 10 + 1));

if (dropCheck == 1) {
	instance_create(x,y,obj_health);
}