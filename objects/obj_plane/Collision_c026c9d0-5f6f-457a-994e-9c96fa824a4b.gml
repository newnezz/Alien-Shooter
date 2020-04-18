/// @description Insert description here
// You can write your code in this editor

previousBaseSpeed = global.baseSpeed;
previousBoostSpeed = global.boostSpeed;
global.baseSpeed += 2;
global.boostSpeed += 1.5;
alarm_set(4, room_speed * 15);