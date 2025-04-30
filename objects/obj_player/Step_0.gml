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
#region Funcionamento das variáveis globais
if(global.hp_player <= 0){
	show_message("Você morreu!");
	game_restart();
}
if(global.exp_player >= lvl_up){
	lvl_player++;
	lvl_up += int64(lvl_up + lvl_up * 0.2);
	global.exp_player = 0;
}
	
#endregion