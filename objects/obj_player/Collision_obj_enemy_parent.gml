//knockback system
// Direção inversa do atacante pro player
var dir = point_direction(other.x, other.y, x, y); 
var forca = 6;

// Define impulso de knockback
knockback_dx = lengthdir_x(forca, dir);
knockback_dy = lengthdir_y(forca, dir);

// Ativa estado de knockback
knockback_timer = room_speed; // 1 segundo
invulneravel = true;

// Ativa o shaders
isHit = 1;