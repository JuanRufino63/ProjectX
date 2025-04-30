x = obj_player.x +  obj_player.sprite_width / 2;
y = obj_player.y;


image_angle = point_direction(x, y, mouse_x, mouse_y);

//projetil
if (mouse_check_button_pressed(mb_left) && global.munition > 0) {
    var angulo = point_direction(x, y, mouse_x, mouse_y);

    var p = instance_create_layer(x, y, "Instances_1", obj_bala);
    p.direction = angulo;
    p.image_angle = angulo;
	global.munition --;
}
if(mouse_check_button(mb_right)){
	global.munition = 16;
}