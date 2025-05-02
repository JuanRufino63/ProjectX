if(global.pause == 1){
	exit;
}
spawn_timer_enemy--;
if (spawn_timer_enemy <= 0 && global.spawn_timer_spaceship > 0) {
    var w = room_width;
    var h = room_height;

    instance_create_layer(0, 0, "Instances_1", obj_enemy);          // Superior esquerdo
	instance_create_layer(w - 1, 0, "Instances_1", obj_enemy);      // Superior direito
	instance_create_layer(0, h - 1, "Instances_1", obj_enemy);      // Inferior esquerdo
	instance_create_layer(w - 1, h - 1, "Instances_1", obj_enemy);  // Inferior direito
	spawn_timer_enemy = 4 * room_speed;
}
global.number_enemy = instance_number(obj_enemy);
if (global.spawn_timer_spaceship <= 0 and create_spaceship == 0 and global.number_enemy <= 0  ) {
    instance_create_layer(obj_player.x, obj_player.y - 64, "Instances_1", obj_spaceship);
	create_spaceship = 1;
} else {
	if(global.spawn_timer_spaceship > 0){
		 global.spawn_timer_spaceship--;
	}
}
