//Text HP
draw_sprite(spr_bar_empty, -1, 64, 96);
draw_sprite_ext(spr_bar_full, -1, 80, 112, global.hp_player / global.hp_max, 1, 0, c_white, 1);
draw_text(80, 116, "HP");
//Text LVL
draw_sprite(spr_bar_empty, -1, 64, 140);
draw_sprite_ext(spr_bar_exp_full, -1, 80, 156, global.exp_player / lvl_up, 1, 0, c_white, 1);
draw_text(80, 160, "Lvl " + string(lvl_player));
