/// @description Insert description here
// You can write your code in this editor

global.highScore = 0;
ini_open("savedata.ini");
global.highScore = ini_read_real("savegame", "score", 0);
ini_close();