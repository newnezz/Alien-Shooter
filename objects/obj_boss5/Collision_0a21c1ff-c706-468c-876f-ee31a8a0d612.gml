/// @description Boss Damage

// Reduces Health
global.boss5Health --;

// Kills Boss
if (global.boss5Health<1) {
	instance_destroy();
}

// Sound Effect
if (global.boss5Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

// Damage Visual
if (global.boss5Health%10 == 0) {
	sprite_index = spr_boss5Hit ;
	alarm_set(1, 60);
}