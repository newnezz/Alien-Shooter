/// @description  Boss Damage

// Reduces Health
global.boss1Health --;

// Kills Boss
if (global.boss1Health<1) {
	instance_destroy(obj_boss1Wep);
	instance_destroy();
	score += (500 * global.scoreRate);
}

// Sound Effect
if (global.boss1Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

// Damage Visual
if (global.boss1Health%10 == 0) {
	sprite_index = spr_boss1Hit;
	alarm_set(1, 60);
}