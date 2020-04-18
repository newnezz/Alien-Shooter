/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3D05423E
/// @DnDArgument : "xpos" "(sprite_width/2)"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "(sprite_height+10)"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_boss1Wep"
/// @DnDSaveInfo : "objectid" "a84463c4-7ba5-4f7f-8055-b25e53046c08"
instance_create_layer(x + (sprite_width/2), y + (sprite_height+10), "Instances", obj_boss1Wep);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 219CF994
/// @DnDArgument : "steps" "random_range(15,45)"
alarm_set(0, random_range(15,45));