//sistema de pause
if(global.pause == 1){
	speed = 0;
	exit;
}
else{
	speed = 2;
}
//Direção do inimigo 
if (instance_exists(obj_player)) {
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    motion_set(dir, speed);
}
if(hp_inimigo <= 0){
	instance_destroy();
	global.number_enemy--;
	var amount = irandom_range(1, 3); // Quantidade de moedas aleatória
	for (var i = 0; i < amount; i++) {
		var dir_x = 20;
		var dir_y = 10;
		if(i % 2 == 1){
			dir_x *= -1;
			dir_y *= -1;
		}
		else{
			dir_x *= +1;
			dir_y *= +1;
		}
	    instance_create_layer(x + i * dir_x, y + i * dir_y, "Instances_1", obj_bones);
	}
}

//Flash
if(isHit){
	flash_alpha = 1;
	isHit = 0;
}
//Reduce flash
if(flash_alpha > 0){
	flash_alpha -= 0.05
}
//Sistema de colisão entre inimigos?
