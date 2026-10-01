extends AnimatedSprite2D;

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("animacion_1"):
		play("Quieto")
	if Input.is_action_just_pressed("animacion_2"):
		play("Andar")
	if Input.is_action_just_pressed("animacion_3"):
		play("Correr")
	if Input.is_action_just_pressed("animacion_4"):
		play("Saltar")
	if Input.is_action_just_pressed("derecha"):
		flip_h = true
	if Input.is_action_just_pressed("izquierda"):
		flip_h = false
