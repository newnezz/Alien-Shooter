/// @description Insert description here
// You can write your code in this editor
global.boss5Health --;

if (global.boss5Health<1) {
	instance_destroy();
}

if (global.boss5Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

if (global.boss5Health%10 == 0) {
	sprite_index = spr_boss5Hit ;
	alarm_set(1, 60);
}