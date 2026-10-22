extends AnimatedSprite2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("mover_izquierda"):
		flip_h = true
	if Input.is_action_pressed("mover_derecha"):
		flip_h = false
	if Input.is_action_pressed("sprint"):
		play("Corriendo")
	elif Input.is_anything_pressed():
		play("Andando")
	else:
		play("Idle")
