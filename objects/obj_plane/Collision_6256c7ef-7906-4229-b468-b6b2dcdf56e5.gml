// Health is lowered based on difficulty
health -= 15 * global.enemyWepDmgRate;

// Change sprite when hit
global.userHitSprite = true;
alarm_set(1,30);


