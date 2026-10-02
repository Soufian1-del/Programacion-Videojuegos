extends Sprite2D



func _process(delta: float) -> void:
	var velocidad := 100.0
	var direccion := Input.get_vector(
		"mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
	if Input.is_action_pressed("sprint"):
		velocidad = 800
	position += direccion * velocidad * delta
	position.x = clamp(position.x,0,320)
	position.y = clamp(position.y,0,180)
	velocidad = move_toward(velocidad, 0, 100)
