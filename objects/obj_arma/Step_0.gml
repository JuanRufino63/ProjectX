if(global.pause == 1){
	exit;
}
event_inherited(); //Munição

//projetil
if (mouse_check_button(mb_left) and global.munition > 0 and tempo_arma <= 0 and _recarrega = 0
	and room == RoomArcade){
    var angulo = point_direction(x, y, mouse_x, mouse_y);
	
    var p = instance_create_layer(x, y, "Instances_1", obj_bala);
    p.direction = angulo;
    p.image_angle = angulo;
	global.munition--;
	tempo_arma = 10;
}
else{
	if(tempo_arma > 0){
		tempo_arma--;
	}
}
