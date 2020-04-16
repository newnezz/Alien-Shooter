/// @description Insert description here
// You can write your code in this editor

// Adds 50 health unless exceeds max health, then just max health out 
if ((50+health)>global.maxHealth) {
	health = global.maxHealth;
} else {
	health += 50;
}

instance_destroy();