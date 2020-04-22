draw_self();

if (drawResume) {
	//scoreFont = font_add_sprite_ext(sFontScoreBig, "0123456789", true, 2);
	
	//Draw configuration
	draw_set_font(fontPixel);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	
	//Score
	draw_sprite(sScore, 0, x, y + 80);
	draw_text_transformed(x + 50, y + 90, string(Score), 2, 2, 0);
	
	//High score
	draw_sprite(sHiScore, 0, x, y + 120);
	draw_text_transformed(x + 50, y + 130, string(global.hScore), 2, 2, 0);
	
	//font_delete(scoreFont);
}