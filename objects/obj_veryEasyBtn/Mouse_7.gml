/// @description Selects Button


// Sets variable difficulties

   // DROPS
// How long drops stay in seconds
global.dropTime = 120;
// How often they drop
global.dropRate = 1;

   // ENEMIES
// Enemy Health
global.enemyHealthRate = .5;
// Enemy Weapon Damage multiplied by damage (2 = 2x the damage)
global.enemyWepDmgRate = .5;
// Enemy Shot Speed
global.enemyFireRate *= 2;
// Enemy Speed
global.enemySpeed = 1;

  // PLAYER MOVEMENT & SHOOTING
global.baseSpeed -= 2;
global.boostSpeed -= 2;

  // SCORE
global.scoreRate = .5

// Go to first room
room_goto(rm_world1_level1);