#region Movimentation
if(keyboard_check(vk_left)){
	x -= 2;	
}
if(keyboard_check(vk_right)){
	x += 2;
}
if(keyboard_check(vk_up)){
	 y -=2;
}
else if(keyboard_check(vk_down)){
	y +=2;
}
#endregion
if(keyboard_check(ord("R"))){
	game_restart();
}
#region States
if(global.hp == 0){
	show_message("Você morreu!");
	game_restart();
}