extends Area2D



func _on_body_entered(body: Node2D) -> void:
	# queue_free()
	modulate.a = 0.3


func _on_body_exited(body: Node2D) -> void:
	print("saliste de la zona")
