/// @description Boss Damage

// Reduces Health
global.boss4Health --;

// Kills Boss
if (global.boss4Health<1) {
	instance_destroy(obj_boss4Wep);
	instance_destroy();
}

// Sound Effect
if (global.boss4Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

// Damage Visual
if (global.boss4Health%10 == 0) {
	sprite_index = spr_boss4Hit;
	alarm_set(1, 60);
}