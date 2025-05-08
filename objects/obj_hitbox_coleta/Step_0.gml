// Segue a posição do player
x = target.x;
y = target.y;

// Verifica se há coletaveis próximos
with (obj_bones) {
    if (point_distance(x, y, other.x, other.y) < other.range) {
        // Destrói o osso (other é o hitbox)
        instance_destroy();

        // Aumenta contador, toca som, etc.
        global.bones += 1; // se tiver essa variável
    }
}
with (obj_blood){
	if (point_distance(x, y, other.x, other.y) < other.range) {
        // Destrói o sangue (other é o hitbox)
        instance_destroy();

        // Aumenta contador, toca som, etc.
        global.blood += 1; // se tiver essa variável
    }
}
