/// @description Inital Game Setup

// Global Variables
global.maxHealth = 100;
global.playerLives = 3;
global.highScore = 0;
global.boss1Alive = true;
global.boss2Alive = true;
global.shootingRate = 15;

// Variables regarding game difficulty
//How long do drops stay around?
global.dropTime = 1;
//How often to drops...drop?
global.dropRate = 1;
//How much health do the enemies have?
global.enemyHealthRate = 1;
//How much damage do their weapons do?
global.enemyWepDmgRate = 1;
//How often do they shoot?
global.enemyFireRate = 1;
//How fast do they move?
global.enemySpeed = 1;


// Loads High Score
ini_open("savedata.ini");
global.highScore = ini_read_real("savegame", "score", 0);
ini_close();

/** Other Possible Difficulty Variables 
//How slow do you move?
//---Tougher to implement---
//Advanced weapons?
//Different movements?
//Special Levels?
//Different endings?
**/