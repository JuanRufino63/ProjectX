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
#region States
if(global.hp_player <= 0){
	show_message("Você morreu!");
	game_restart();
}
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