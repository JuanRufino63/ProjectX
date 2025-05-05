// Segue a posição do player
x = target.x;
y = target.y;

// Verifica se há moedas próximas
with (obj_bones) {
    if (point_distance(x, y, other.x, other.y) < other.range) {
        // Destrói a moeda (other é o hitbox)
        instance_destroy();

        // Aumenta contador, toca som, etc.
        global.bones += 1; // se tiver essa variável
    }
}
