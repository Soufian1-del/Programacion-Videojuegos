extends CharacterBody2D
var velocidad := 120.0
var distancia_minima := 6.0
func _physics_process(_delta: float) -> void:
	var objetivo := get_global_mouse_position()
	look_at(objetivo)
	if global_position.distance_to(objetivo) > distancia_minima:
		if(global_position.distance_to(objetivo) < distancia_minima * 15):
			velocidad = move_toward(120, 0, 30)
		else:
			velocidad = move_toward(velocidad, 120, 30)
		velocity = -global_position.direction_to(objetivo) * velocidad
	else:
		velocity = Vector2.ZERO
	position.x = clamp(position.x, 0, 320)
	position.y = clamp(position.y, 0 , 180)
	move_and_slide()
