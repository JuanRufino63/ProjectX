//Para o player interagir com a caixa
if(point_distance(x, y, obj_player.x, obj_player.y) < 96) {
    if (keyboard_check_pressed(ord("E")))
	{
		hud_visible = 1;		
    }	
}
if (hud_visible) {
    var buy_w = sprite_get_width(spr_buy);
    var buy_h = sprite_get_height(spr_buy);

    if (mouse_x > buy_x and mouse_x < buy_x + buy_w and
        mouse_y > buy_y and mouse_y < buy_y + buy_h) {

        if (mouse_check_button_pressed(mb_left)) {
            if (hp_ups < hp_ups_max) {
                hp_ups += 1;
				global.hp_max += 5;
				global.hp = global.hp_max;
            }
        }
    }
}