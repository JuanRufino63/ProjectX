//Para o player interagir com a caixa
if(point_distance(x, y, obj_player.x, obj_player.y) < 96) {
    if (keyboard_check_pressed(ord("E")))
	{
		global.pause = 1;	
    }
	if(global.pause == 1){
		instance_create_layer(x, y, "Instances", obj_buy);
	}
}

