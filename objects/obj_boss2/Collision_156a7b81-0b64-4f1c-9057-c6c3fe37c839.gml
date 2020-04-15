/// @description Insert description here
// You can write your code in this editor
global.boss2Health --;

if (global.boss2Health<1) {
	instance_destroy();
}

if (global.boss2Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

if (global.boss2Health%10 == 0) {
	sprite_index = spr_boss2Hit;
	alarm_set(1, 60);
}