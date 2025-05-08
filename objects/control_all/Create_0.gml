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
//enemies
global.number_enemy = 0;
//bones
global.bones = 0;
//munition
global.munition = 16;
global.max_munition = 16;
//Player globals
global.hp_player = 10; //Vida player
global.hp_max = 10;
global.strenght = 1;
//Upgrades
global.upgrades = 1;
#endregion

//listas
lista_falas_tempo = ["MATE TODOS OS INIMIGOS", "CORRA PARA A NAVE",
					"TEMPO RESTANTE"];