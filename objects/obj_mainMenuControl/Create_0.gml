/// @description Inital Game Setup

// Stops all previous music
audio_stop_all();

// Global Variables
global.maxHealth = 100;
global.playerLives = 3;
global.highScore = 0;
global.boss1Alive = true;
global.boss2Alive = true;
global.boss3Alive = true;
global.boss4Alive = true;
global.boss5Alive = true;
global.shootingRate = 15;
global.playerAlive = true;

/** GAME DIFFICULTY VARS **/
global.dropTime = 1; //Drops stay around
global.dropRate = 1; //Drops how often
global.enemyHealthRate = 1; //Enemy Health
global.enemyWepDmgRate = 1; //Enemy Wep Dmg
global.enemyFireRate = 1; //Enemy Shooting Speed
global.enemySpeed = 1; //Enemy Movement

/** Other Possible measures of difficulty
- Different movements
- Special moves / weapons
- Harder Levels
**/

// Loads High Score
ini_open("savedata.ini");
global.highScore = ini_read_real("savegame", "score", 0);
ini_close();