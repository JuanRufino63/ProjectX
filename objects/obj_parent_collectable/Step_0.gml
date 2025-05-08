if(global.pause == 1){
	speed = 0;
	exit;
}
else{
	speed = 4;
}
var dir =point_direction(x, y, obj_player.x, obj_player.y);
motion_set(dir, speed);