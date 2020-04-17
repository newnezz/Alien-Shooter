/// @description Insert description here
// You can write your code in this editor
global.boss3Health --;

if (global.boss3Health<1) {
	instance_destroy();
}

if (global.boss3Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

if (global.boss3Health%10 == 0) {
	sprite_index = spr_Boss3Hit;
	alarm_set(1, 60);
}