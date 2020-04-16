// Lowers health

health -= 15;

// Change sprite when hit
global.userHitSprite = true;
alarm_set(1,30);

// If dead, lower lives
if (health <= 0){
	global.playerLives--;
	health=100;
}