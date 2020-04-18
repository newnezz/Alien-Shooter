/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 0DC07B65
/// @DnDArgument : "path" "pth_boss1"
/// @DnDArgument : "speed" "global.enemySpeed"
/// @DnDArgument : "atend" "path_action_reverse"
/// @DnDSaveInfo : "path" "b0ed61fb-f3d9-4ba7-8eff-2e0d9f1801b7"
path_start(pth_boss1, global.enemySpeed, path_action_reverse, false);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 25B25313
/// @DnDArgument : "code" "global.boss3Health = 100;$(13_10)alarm_set(0, random_range(15,45));"
global.boss3Health = 100;
alarm_set(0, random_range(15,45));