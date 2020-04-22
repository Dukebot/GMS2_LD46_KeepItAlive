///@param scoreAmount
var scoreAmount = argument0;

if (scoreAmount > global.hScore) {
	global.hScore = scoreAmount;
	ini_open("settings");
	ini_write_real("stats", "hScore", global.hScore);
	ini_close();
}