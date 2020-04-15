/// @description Insert description here
// You can write your code in this editor

ini_open("savedata.ini");
global.highScore = ini_read_real("savegame", "score", 0);
ini_close();