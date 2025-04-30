// Posição base do painel
var panel_x = 100;
var panel_y = 100;

// Anima o painel vindo da esquerda (offset)
var offset = lerp(-300, 0, visible_amount);

// Desenha o fundo do painel
draw_set_alpha(visible_amount);
draw_set_color(c_black); // Cor do painel
draw_rectangle(panel_x + offset, panel_y, panel_x + offset + 300, panel_y + 200, false);

// Troca a cor antes de desenhar o texto (muito importante!)
draw_set_color(c_white);

// Desenha o texto do HUD
draw_text(panel_x + offset + 20, panel_y + 20, "Nome: Nitcholas");
draw_text(panel_x + offset + 20, panel_y + 50, "HP: " + string(global.hp_player));
draw_text(panel_x + offset + 20, panel_y + 80, "Munição: " + string(global.munition));

// Reset
draw_set_alpha(1);
draw_set_color(c_white);