window_set_cursor(-1);
cursor_sprite = spr_cursor;

room_timer = 10 * room_speed;

//pause game
global.pause = 0;
texto_tempo = "Tempo Restante";

//Tempo para aparecer a nave;
global.spawn_timer_spaceship = 25 * room_speed; // 10 segundos
global.spawn_total_spaceship = 25* room_speed;