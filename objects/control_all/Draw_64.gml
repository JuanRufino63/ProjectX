if(room == RoomSafe){
	draw_text(room_width / 2, room_height, room_timer div 60);
}
if(room == RoomArcade){
	//Text Tempo
	draw_sprite(spr_bar_time, -1, room_width / 2 - 48, room_width / 2);
	draw_sprite_ext(spr_bar_time_full, -1, room_width / 2 - 48, room_width / 2, 
					global.spawn_timer_spaceship / global.spawn_total_spaceship , 1, 0, c_white, 1);
	draw_text(room_width / 2 - 48, room_width / 2, texto_tempo);
	//Text Munition
	var _xx =  room_width * (7 / 8);
	var _yy = room_height * (7 / 8);
	draw_sprite(spr_gun, -1, _xx, _yy);
	draw_text(_xx + 32, _yy, string(global.munition) + "/" + string(global.max_munition));
}
if(room == RoomArcade or room == RoomSafe){
	//Text HP
	draw_sprite(spr_bar_empty, -1, 64, 96);
	draw_sprite_ext(spr_bar_full, -1, 80, 112, global.hp_player / global.hp_max, 1, 0, c_white, 1);
	draw_text(80, 116, "HP");
	//Text Bones
	draw_sprite(spr_bone, -1, 96, 180);
	draw_text(128, 170, string(global.bones));
}
