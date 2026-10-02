extends Sprite2D

var velocidad := 100.0


func _process(delta: float) -> void:
	var direccion := Input.get_vector(
		"mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
	position += direccion * velocidad * delta
