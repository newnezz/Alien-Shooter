/// @description Selects Button

// Sets variable difficulties

   // DROPS
// How long drops stay in seconds
global.dropTime = 7;
// How often they drop
global.dropRate = 1;

   // ENEMIES
// Enemy Health
global.enemyHealthRate = 1.5;
// Enemy Weapon Damage
global.enemyWepDmgRate = 3;
// Enemy Shot Speed
global.enemyFireRate *= .65;
// Enemy Speed
global.enemySpeed = 8;

  // PLAYER MOVEMENT & SHOOTING
global.baseSpeed += 4;
global.boostSpeed += 4;
global.shootingRate -= 4;

  // SCORE
global.scoreRate = 2;

// Go to first room
room_goto(rm_world1_level1);