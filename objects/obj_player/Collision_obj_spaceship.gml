if(keyboard_check(ord("E")) and !instance_exists(obj_enemy_1)){
	room_goto(2);
	x = get_room_width(RoomSafe) / 2;
	y = get_room_height(RoomSafe) / 2;
}
