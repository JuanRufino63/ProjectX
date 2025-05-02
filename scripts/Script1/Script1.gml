function get_room_width(_room) {
    switch (_room) {
        case RoomSafe:
            return 640; 
        default:
            return room_width;
    }
}
function get_room_height(_room){
	switch(_room){
		case RoomSafe:
			return 360;
		default:
			return room_height;
	}
}
