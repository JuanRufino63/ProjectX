switch (estado) {
    case EstadoBomba.VOANDO:
        timer_bomb -= 1;

        if (timer_bomb <= 0) {
            // Muda para estado de explosão
			speed = 0;
            estado = EstadoBomba.EXPLODINDO;
            sprite_index = spr_explosion_bomb;
            image_index = 0;
            image_speed = 0.3;

            // Afeta inimigos na área
            with (obj_enemy_parent) {
                if (point_distance(x, y, other.x, other.y) < other.range_bomb) {
                     hp_inimigo -= other.damage_bomb;
					 isHit = 1; //Shaders
					 //Knockback System
					 knockback_dir = point_direction(other.x, other.y, x, y); // do centro da bomba pro inimigo
					 knockback_speed = 8; // você pode ajustar esse valor
                }
            }


        }
        break;

    case EstadoBomba.EXPLODINDO:
        if (image_index >= image_number - 1) {
            instance_destroy();
        }
        break;
}
