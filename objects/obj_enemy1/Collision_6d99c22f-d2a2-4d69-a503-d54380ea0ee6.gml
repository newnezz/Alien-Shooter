/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38C2AB35
/// @DnDArgument : "code" "action_set_relative(1);$(13_10)action_sound(snd_explosion, 0);$(13_10)action_set_score(25);$(13_10)action_kill_object();$(13_10)action_set_relative(0);$(13_10)"
action_set_relative(1);
action_sound(snd_explosion, 0);
action_set_score(25);
action_kill_object();
action_set_relative(0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4516D1B3
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosionAnimation"
/// @DnDSaveInfo : "objectid" "6218bd1c-c930-4e09-80de-af73e8b8313d"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosionAnimation);