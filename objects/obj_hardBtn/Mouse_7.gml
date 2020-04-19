/// @description Selects Button

// Sets variable difficulties

   // DROPS
// How long drops stay in seconds
global.dropTime = 10;
// How often they drop
global.dropRate = 1;

   // ENEMIES
// Enemy Health
global.enemyHealthRate = 1.25;
// Enemy Weapon Damage
global.enemyWepDmgRate = 1.5;
// Enemy Shot Speed
global.enemyFireRate *= .85;
// Enemy Speed
global.enemySpeed = 7;

  // PLAYER MOVEMENT & SHOOTING
global.baseSpeed += 2;
global.boostSpeed += 2;
global.shootingRate -=2;

  // SCORE
global.scoreRate = 1.5;

// Go to first room
room_goto(rm_world1_level1);