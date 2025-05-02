if(room == RoomSafe){
	room_timer--;

	if (room_timer <= 0) {
	    room_goto(RoomArcade); 
		room_timer = 10 * room_speed;
	}
}
#region Pause System
//funcionamento da variavel pause
if(keyboard_check(vk_escape)){
	global.pause = 1;
}
#endregion
if(global.spawn_timer_spaceship <= 0){
	texto_tempo = "CORRA PARA A NAVE!";
	if(room == RoomSafe){
		global.spawn_timer_spaceship = 25 * room_speed;
	}
}