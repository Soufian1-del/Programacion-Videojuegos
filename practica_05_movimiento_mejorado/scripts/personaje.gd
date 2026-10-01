extends Sprite2D

var velocidad := 100.0


func _process(delta: float) -> void:
	if Input.is_action_pressed("mover_izquierda"):
		position.x -= velocidad * delta
	if Input.is_action_pressed("mover_derecha"):
		position.x += velocidad * delta
	if Input.is_action_pressed("mover_arriba"):
		position.y -= velocidad * delta
	if Input.is_action_pressed("mover_abajo"):
		position.y += velocidad * delta
