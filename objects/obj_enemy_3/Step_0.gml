// Inherit the parent event
if(time_vomito > 0){
	time_vomito--;
}
event_inherited();
if(time_vomito <= 0){
	speed = 0;
	var angulo = point_direction(x, y, obj_player.x, obj_player.y);
    var p = instance_create_layer(x, y, "Instances_1", obj_vomito);
    p.direction = angulo;
    p.image_angle = angulo;
	time_vomito = 60; //Pode ser aleatório
}
else{
	speed = 1.7;
}
