/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62C5FAF8
/// @DnDArgument : "code" "/// @description $(13_10)// You can write your code in this editor$(13_10)$(13_10)// Health decreases, sprite is shown for damage$(13_10)// Alarm 1 turns off damage sprite after .5 seconds$(13_10)$(13_10)health -= 15;$(13_10)global.userHitSprite = true;$(13_10)alarm_set(1,120);"
/// @description 
// You can write your code in this editor

// Health decreases, sprite is shown for damage
// Alarm 1 turns off damage sprite after .5 seconds

health -= 15;
global.userHitSprite = true;
alarm_set(1,120);