if(global.pause == 1){
	exit;
}
spawn_timer_enemy--;
if (spawn_timer_enemy <= 0 && global.spawn_timer_spaceship > 0) {
	var w = room_width;
    var h = room_height;
	num_random_enemy = random_range(1, 100);
	if(num_random_enemy > 50){
		state_enemies = 1;	
	}
	else if(num_random_enemy < 20){
		state_enemies = 2;
	}
	else{
		state_enemies = 3;
	}
	switch state_enemies{
		case 1:	
		    instance_create_layer(0, 0, "Instances_1", obj_enemy_1);          // Superior esquerdo
			instance_create_layer(w - 1, 0, "Instances_1", obj_enemy_1);      // Superior direito
			instance_create_layer(0, h - 1, "Instances_1", obj_enemy_1);      // Inferior esquerdo
			instance_create_layer(w - 1, h - 1, "Instances_1", obj_enemy_1);  // Inferior direito
			break;
		case 2:
			instance_create_layer(0, 0, "Instances_1", obj_enemy_2);
			instance_create_layer(w - 1, 0, "Instances_1", obj_enemy_2);
			instance_create_layer(0, h - 1, "Instances_1", obj_enemy_1);
			instance_create_layer(w - 1, h - 1, "Instances_1", obj_enemy_2);
			break;
		case 3:
			instance_create_layer(0, 0, "Instances_1", obj_enemy_3);
			instance_create_layer(w - 1, 0, "Instances_1", obj_enemy_2);
			instance_create_layer(0, h - 1, "Instances_1", obj_enemy_1);
			instance_create_layer(w - 1, h - 1, "Instances_1", obj_enemy_3);
			
	}
	spawn_timer_enemy = 4 * room_speed;
}
global.number_enemy = instance_number(obj_enemy_parent);
if (global.spawn_timer_spaceship <= 0 and create_spaceship == 0 and global.number_enemy <= 0  ) {
    instance_create_layer(obj_player.x, obj_player.y - 64, "Instances_1", obj_spaceship);
	create_spaceship = 1;
} else {
	if(global.spawn_timer_spaceship > 0){
		 global.spawn_timer_spaceship--;
	}
}
