/// @description More Health

// Adds 50 health, wont exceed max health
if ((50+health)>global.maxHealth) {
	health = global.maxHealth;
} else {
	health += 50;
}