spawn_timer--;

if (spawn_timer <= 0) {
    // Posição dos 4 cantos
    var w = room_width;
    var h = room_height;

    // Canto superior esquerdo
    instance_create_layer(0, 0, "Instances_1", obj_enemy);

    // Canto superior direito
    instance_create_layer(w, 0, "Instances_1", obj_enemy);

    // Canto inferior esquerdo
    instance_create_layer(0, h, "Instances_1", obj_enemy);

    // Canto inferior direito
    instance_create_layer(w, h, "Instances_1", obj_enemy);

    // Reinicia o timer
    spawn_timer = 4 * room_speed;
}