#region Movimentation
if(keyboard_check(vk_left)){
	hspeed = -2;	
}
else if(keyboard_check(vk_right)){
	hspeed = 2;
}
else if(keyboard_check(vk_up)){
	vspeed = -2;
}
else if(keyboard_check(vk_down)){
	vspeed = 2;
}
else{
	hspeed = 0;
	vspeed = 0;
}
#endregion
//botao restart
if(keyboard_check(ord("R"))){
	game_restart();
}