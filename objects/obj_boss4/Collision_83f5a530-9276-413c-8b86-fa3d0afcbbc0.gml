/// @description Insert description here
// You can write your code in this editor
global.boss4Health --;

if (global.boss4Health<1) {
	instance_destroy();
}

if (global.boss4Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

if (global.boss4Health%10 == 0) {
	sprite_index = spr_boss4Hit;
	alarm_set(1, 60);
}