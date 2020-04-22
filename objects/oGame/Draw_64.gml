///@description draw debug data...
draw_set_halign(fa_left);
draw_set_halign(fa_top);

//Debug information...
if global.debug {
	var X = 20;
	var Y = 20;
	var incrementY = 50;
	var scale = 1.5;

	draw_text_transformed(X, Y, "Level " + string(level), scale, scale, 0);
	Y += incrementY;

	draw_text_transformed(X, Y, "Time " + string(time/60), scale, scale, 0);
	Y += incrementY;

	draw_text_transformed(X, Y, "Enemy Spawn Rate " + string(oEnemySpawner.spawnRate), scale, scale, 0);
	Y += incrementY;
}

//DRAW SCORE AND LEVEL
//var scoreFont = font_add_sprite_ext(sFontScore, "0123456789", true, 2);
{
	draw_set_font(fontPixel);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	draw_text_transformed(room_width/2, 25, string(Score), 2, 2, 0);
	//draw_text_transformed(room_width/2, 65, string(level), 2, 2, 0);
}
//font_delete(scoreFont);