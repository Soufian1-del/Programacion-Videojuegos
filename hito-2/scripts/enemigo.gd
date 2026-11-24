extends Area2D

# le decimos que si algo toca la hitbox y tiene una funcion q se llame recibir daño, ejecute la funcion recibir daño, en este caso body es lo que toca al bicho
func _on_body_entered(body: Node2D) -> void:
	if body.has_method("recibir_danio"):
		body.recibir_danio()
