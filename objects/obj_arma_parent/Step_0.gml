// PAUSA
if (global.pause == 1) {
    exit;
}

// === POSICIONAMENTO E DIREÇÃO DA ARMA ===
var mouse_esquerda = mouse_x < obj_player.x;

if (mouse_esquerda) {
    image_xscale = -1;
    x = obj_player.x - obj_player.sprite_width / 2;
} else {
    image_xscale = 1;
    x = obj_player.x + obj_player.sprite_width / 2;
}

y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y);

// === RECARGA MANUAL OU AUTOMÁTICA ===
if (mouse_check_button(mb_right) || global.munition <= 0) {
    _recarrega = 1;
}

if (_recarrega) {
    tempo_recarrega--;
}

if (tempo_recarrega <= 0) {
    global.munition = 16;
    _recarrega = 0;
    tempo_recarrega = room_speed * 0.5; // tempo de recarga em segundos
}
