/// @description Saves High Score

// Only if score is higher will it replace high score
if (score > global.highScore) {
	global.highScore = score;
	// Opens file, saves data, closes file
	ini_open("savedata.ini");
	ini_write_real("savegame", "score", global.highScore);
	ini_close();
}




/** Reading and Writing Save File Syntax
score = 1000;
ini_open("savedata.ini");
ini_write_real("save1", "Score", score );
score2 = ini_read_real("save1", "Score", 0 );
ini_close();

**/