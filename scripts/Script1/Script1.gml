function get_room_width(_room) {
    switch (_room) {
        case RoomSafe:
            return 640; 
		case RoomArcade:
			return 1344;
		case RoomInicial:
			return 1366
        default:
            return room_width;
    }
}
function get_room_height(_room){
	switch(_room){
		case RoomSafe:
			return 360;
		case RoomArcade:
			return 768;
		case RoomInicial:
			return 720;
		default:
			return room_height;
	}
}
