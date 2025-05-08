if(point_distance(x, y, obj_player.x, obj_player.y) < 96) {
		var hold_progress = hold_buy / hold_buy_max;
		draw_sprite(spr_hold_buy_empty, -1, _xx, _yy);
		draw_sprite_ext(spr_hold_buy_full, -1, _xx, _yy, hold_progress, hold_progress, 0, c_white, 1);
		draw_text(_xx + 36, _yy, "UP DE FORÇA, " + string(20 * global.upgrades) + "OSSOS");
}
