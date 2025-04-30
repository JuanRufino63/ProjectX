var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_set_font(Font_Version001);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var length_menu = array_length(lista_menu_inicial);
for(var i = 0; i < length_menu; i++){
	var _wgui = display_get_gui_width();
	var _hgui = display_get_gui_height();
	
	var text = lista_menu_inicial[i]
	var _hstr = string_height(text); //tamanho da string
	var _wstr = string_width(text); //tamanho da string
	
	var x1 = _wgui  / 2 - _wstr / 2;
	var y1 = _hgui  / 2 - _hstr / 2 + _hstr * i; //top left
	
	var x2 = _wgui  / 2 + _wstr / 2;
	var y2 = _hgui  / 2 + _hstr / 2 + _hstr * i; //top left
	
	if(point_in_rectangle(_mx, _my, x1, y1, x2, y2)){
		scale[i] = lerp(scale[i],1.4, 0.15);		
	}
	else{
		scale[i] = lerp(scale[i], 1, 0.15);
	}
	
	draw_text_transformed(_wgui / 2, _hgui / 2 + _hstr * i, lista_menu_inicial[i], scale[i], scale[i], 0);
}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
 