extends Area2D


func _on_body_entered(_cuerpo: Node2D) -> void:
	queue_free()
