if (invulneravel) {
    if ((knockback_timer div 5) mod 2 == 0) {
        draw_set_color(c_white); // deixa o sprite todo branco
        draw_sprite(sprite_index, image_index, x, y);
        draw_set_color(c_white); // volta ao normal (opcional neste caso)
    } else {
        draw_self(); // desenha normal
    }
} else {
    draw_self(); // desenha normal quando não está invulnerável
}
