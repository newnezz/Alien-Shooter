/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 0DC07B65
/// @DnDArgument : "path" "pth_boss1"
/// @DnDArgument : "speed" "10"
/// @DnDArgument : "atend" "path_action_reverse"
/// @DnDSaveInfo : "path" "b0ed61fb-f3d9-4ba7-8eff-2e0d9f1801b7"
path_start(pth_boss1, 10, path_action_reverse, false);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 352FE535
/// @DnDArgument : "steps" "random_range(15,45)"
alarm_set(0, random_range(15,45));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 25B25313
/// @DnDArgument : "code" "global.boss1Health = 100;"
global.boss1Health = 100;