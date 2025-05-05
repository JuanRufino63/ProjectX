window_set_cursor(-1);
cursor_sprite = spr_cursor;

room_timer = 10 * room_speed;
time_stop = 0; //variavel para espera
//pause game
global.pause = 0;
texto_tempo = "Tempo Restante";

#region Variaveis Globais
//Tempo para aparecer a nave;
global.spawn_timer_spaceship = 25 * room_speed; // 10 segundos
global.spawn_total_spaceship = 25* room_speed;
global.number_enemy = 0;
global.bones = 0;
#endregion

//listas
lista_falas_tempo = ["MATE TODOS OS INIMIGOS", "CORRA PARA A NAVE",
					"TEMPO RESTANTE"];