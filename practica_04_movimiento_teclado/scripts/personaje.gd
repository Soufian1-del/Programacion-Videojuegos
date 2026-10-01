extends AnimatedSprite2D

var velocidad := 10.0
func _process(delta: float) -> void:
	var semueve = false
	if Input.is_action_pressed("mover_izquierda"):
		position.x -= velocidad * delta
		semueve = true
		flip_h = false
	if Input.is_action_pressed("mover_derecha"):
		position.x += velocidad * delta
		semueve = true
		flip_h = true
	if Input.is_action_pressed("mover_arriba"):
		position.y -= velocidad * delta
		semueve = true
		flip_h = false
	if Input.is_action_pressed("mover_abajo"):
		position.y += velocidad * delta
		semueve = true
		flip_h = false
	if Input.is_action_pressed("sprint"):
		velocidad = 800.0
		semueve = true
	if Input.is_action_just_released("sprint"):
		velocidad = 10.0
	if semueve: 
		play("andar")
	else:
		play("quieto")
