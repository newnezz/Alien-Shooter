/// @description Insert description here
// You can write your code in this editor


// Sets variable difficulties

   // DROPS
// How long drops stay in seconds
global.dropTime = 120;
// How often they drop
global.dropRate = 1;

   // ENEMIES
// Enemy Health
global.enemyHealthRate = 1;
// Enemy Weapon Damage multiplied by damage (2 = 2x the damage)
global.enemyWepDmgRate = .5;
// Enemy Shot Speed
global.enemyFireRate = 1;
// Enemy Speed
global.enemySpeed = 1;

// Go to first room
room_goto_next();