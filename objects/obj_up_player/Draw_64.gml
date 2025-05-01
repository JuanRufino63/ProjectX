if (hud_visible) {
    // Desenha a barra
	draw_text(_xx - 48, _yy + 16, "HP_UP");
    draw_sprite(spr_bar_empty, -1, _xx, _yy);
    draw_sprite_ext(spr_bar_full, -1, _xx + 16, _yy + 16, hp_ups / hp_ups_max, 1, 0, c_white, 1);

    // Posição do botão de compra


    // Desenha o botão
    draw_sprite(spr_buy, -1, buy_x, buy_y);
}
