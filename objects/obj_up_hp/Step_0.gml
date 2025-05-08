//Para o player interagir com a caixa
if(point_distance(x, y, obj_player.x, obj_player.y) < 96) {
    if (keyboard_check(ord("E"))){
		if(hold_buy < 120){
			hold_buy++;
		}
		else if(hold_buy >= 120 and global.bones >= 20 * global.upgrades){
			global.hp_max += 10;
			global.hp_player += 10;
			global.bones -= 20 * global.upgrades;
			global.upgrades++;
			hold_buy = 0
		}
	}
	else{
		if(hold_buy > 0){
			hold_buy--;
		}
	}
}
else{
	hold_buy = 0;
}