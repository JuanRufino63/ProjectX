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
if(global.spawn_timer_spaceship <= 0){
	texto_tempo = "CORRA PARA A NAVE!";
	if(room == RoomSafe){
		global.spawn_timer_spaceship = 25 * room_speed;
	}
}