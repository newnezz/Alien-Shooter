/// @description Inital Game Setup

// Global Variables
global.maxHealth = 100;
global.playerLives = 3;
global.highScore = 0;

// Loads High Score
ini_open("savedata.ini");
global.highScore = ini_read_real("savegame", "score", 0);
ini_close();