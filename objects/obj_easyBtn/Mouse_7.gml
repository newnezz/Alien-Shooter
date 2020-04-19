/// @description Selects Button

// Sets variable difficulties

   // DROPS
// How long drops stay in seconds
global.dropTime = 30;
// How often they drop
global.dropRate = 1;

   // ENEMIES
// Enemy Health
global.enemyHealthRate = .75;
// Enemy Weapon Damage
global.enemyWepDmgRate = .75;
// Enemy Shot Speed
global.enemyFireRate *= 1.5;
// Enemy Speed
global.enemySpeed = 3;

  // PLAYER MOVEMENT & SHOOTING
global.baseSpeed -= 1;
global.boostSpeed -= 1;

  // SCORE
global.scoreRate = .75;

// Go to first room
room_goto(rm_world1_level1);