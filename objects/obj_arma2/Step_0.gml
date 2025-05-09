if(global.pause == 1){
    exit;
}
event_inherited(); //Munição

// shotgun
if (mouse_check_button(mb_left) && global.munition >= 5 && tempo_arma <= 0 && _recarrega == 0
    && room == RoomArcade) {

    var angulo_base = point_direction(x, y, mouse_x, mouse_y);
    var num_balas = 5;
    var spread = 10; // ângulo de dispersão em graus

    for (var i = 0; i < num_balas; i++) {
        var desvio = random_range(-spread, spread);
        var angulo = angulo_base + desvio;

        var p = instance_create_layer(x, y, "Instances_1", obj_bala);
        p.direction = angulo;
        p.image_angle = angulo;
    }

    global.munition -= num_balas;
    tempo_arma = 30; // maior delay que uma pistola
}
else {
    if(tempo_arma > 0){
        tempo_arma--;
    }
}
