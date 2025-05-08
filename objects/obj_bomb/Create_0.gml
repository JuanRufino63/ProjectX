timer_bomb = room_speed * 0.5;
range_bomb = 128;
damage_bomb = 30;

// Define a direção só uma vez, com base no mouse
dir = point_direction(x, y, mouse_x, mouse_y);
motion_set(dir, 6); // Direção

enum EstadoBomba{
	VOANDO,
	EXPLODINDO
}

estado = EstadoBomba.VOANDO;