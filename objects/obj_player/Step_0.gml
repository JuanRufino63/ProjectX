//Pause
if(global.pause == 1){
	exit;
}
#region Movimentation
if(keyboard_check(vk_left)){
	x -= spd;	
}
if(keyboard_check(vk_right)){
	x += spd;
}
if(keyboard_check(vk_up)){
	 y -= spd;
}
else if(keyboard_check(vk_down)){
	y += spd;
}
#endregion
//Restart games
if(keyboard_check(ord("L"))){
	game_restart();
}
  #region Knockback system
//knockback system
if (knockback_timer > 0) {
    // Move com knockback
    x += knockback_dx;
    y += knockback_dy;

    // Lentamente reduz o knockback pra suavizar
    knockback_dx *= 0.9;
    knockback_dy *= 0.9;

    knockback_timer--;

    if (knockback_timer <= 0) {
        invulneravel = false;
    }
}
#endregion
#region Shaders
//Flash
if(isHit){
	flash_alpha = 1;
	isHit = 0;
}
if(flash_alpha > 0){
	flash_alpha -= 0.05
}

//Reduce flash
#endregion
#region Funcionamento das variáveis globais
if(global.hp_player <= 0){
	show_message("Você morreu!");
	game_restart();
}


#endregion
#region Controles
if(keyboard_check_released(ord("E")) and tempo_espera <= 0 and room == RoomArcade){
	instance_create_layer(obj_player.x, obj_player.y, "Instances_1", obj_bomb);
	tempo_espera = room_speed * 5;
}
else if(tempo_espera > 0){
	tempo_espera--;
}
#endregion


