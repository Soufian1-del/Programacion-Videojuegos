extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# le decimos que si algo toca la hitbox y tiene una funcion q se llame recibir daño, ejecute la funcion recibir daño, en este caso body es lo que toca al bicho
func _on_body_entered(body: Node2D) -> void:
	if body.has_method("recibir_danio"):
		body.recibir_danio()
