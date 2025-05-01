if(global.pause == 1){
	exit;
}
spawn_timer_enemy--;
if (spawn_timer_enemy <= 0 && !instance_exists(obj_spaceship)) {
    var w = room_width;
    var h = room_height;

    instance_create_layer(0, 0, "Instances_1", obj_enemy);          // Superior esquerdo
    instance_create_layer(w - 1, 0, "Instances_1", obj_enemy);      // Superior direito
    instance_create_layer(0, h - 1, "Instances_1", obj_enemy);      // Inferior esquerdo
    instance_create_layer(w - 1, h - 1, "Instances_1", obj_enemy);  // Inferior direito

    spawn_timer_enemy = 4 * room_speed;
}

if (spawn_timer_spaceship <= 0) {
    instance_create_layer(room_width / 2, 96, "Instances_1", obj_spaceship);
} else {
    spawn_timer_spaceship--;
}
