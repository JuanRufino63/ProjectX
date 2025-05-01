if(global.pause == 1){
	exit;
}
// Define se o HUD deve aparecer
if (keyboard_check(vk_tab)) {
    target_visible = 1;
} else {
    target_visible = 0;
}

// Interpola suavemente a visibilidade
visible_amount = lerp(visible_amount, target_visible, 0.2);

//Teste personagem
