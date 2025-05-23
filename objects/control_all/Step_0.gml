if(room == RoomSafe){
	room_timer--;

	if (room_timer <= 0) {
	    room_goto(RoomArcade); 
		room_timer = 10 * room_speed;
	}
}
#region Pause System
//funcionamento da variavel pause
// Ativando o pause (só se não estiver pausado e tempo de espera zerado)
if (!global.pause && time_stop == 0) {
	if (keyboard_check_pressed(vk_escape)) {
		global.pause = 1;
		time_stop = 5; // evita toggle imediato
	}
}
// Enquanto pausado, espera os 5 frames e permite despausar
if (global.pause) {
	if (time_stop > 0) {
		time_stop--;
	} else if (keyboard_check_pressed(vk_escape)) {
		global.pause = 0;
	}
}
#endregion
if(global.spawn_timer_spaceship == 0){
	texto_tempo = lista_falas_tempo[0];
	if(global.number_enemy == 0){
		texto_tempo = lista_falas_tempo[1];
	}
	if(room == RoomSafe){
		global.spawn_total_spaceship += (5 * room_speed);
		global.spawn_timer_spaceship = global.spawn_total_spaceship;
	}
}
else{
	texto_tempo = lista_falas_tempo[2];
}
#region Criação de Instancias
if(keyboard_check_released(ord("1")) and !instance_exists(obj_arma)){
	instance_destroy(obj_arma_parent);
	instance_create_layer(obj_player.x, obj_player.y, "Instances_1", obj_arma);
}
else if(keyboard_check_released(ord("2")) and !instance_exists(obj_arma2)){
	instance_destroy(obj_arma_parent);
	instance_create_layer(obj_player.x, obj_player.y, "Instances_1", obj_arma2);
}
#endregion