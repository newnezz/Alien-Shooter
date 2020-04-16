/// @description Reset High Score


// Resets High Score
global.highScore = 0;
ini_open("savedata.ini");
ini_write_real("savegame", "score", global.highScore);
ini_close();
	