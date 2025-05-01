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
