if(room == RoomSafe){
	draw_text(64, room_width / 2, room_timer div 60);
}
if(room == RoomArcade){
	//Text HP
	draw_sprite(spr_bar_time, -1, room_width / 2 - 48, room_width / 2);
	draw_sprite_ext(spr_bar_time_full, -1, room_width / 2 - 48, room_width / 2, 
					global.spawn_timer_spaceship / global.spawn_total_spaceship , 1, 0, c_white, 1);
	draw_text(room_width / 2 - 48, room_width / 2, texto_tempo);
}