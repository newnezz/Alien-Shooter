// Health is lowered based on difficulty
health -= 30 * global.enemyWepDmgRate;

// Change sprite when hit
global.userHitSprite = true;
alarm_set(1,30);

// Pushes player away
y += 15;