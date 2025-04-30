if (instance_exists(obj_player)) {
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    motion_set(dir, speed);
}
if(hp_inimigo == 0){
	instance_destroy();
	global.exp_player += 100;
}

//Flash
if(isHit){
	flash_alpha = 1;
	isHit = 0;
}
if(flash_alpha > 0){
	flash_alpha -= 0.05
}

//Reduce flash
