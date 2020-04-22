gpu_set_blendmode(bm_add);
{
	draw_sprite_ext(sEnemyWater, 0, x, y, scale*1.2, scale*1.2, 0, c_white, 0.2);
	draw_self();
}
gpu_set_blendmode(bm_normal);