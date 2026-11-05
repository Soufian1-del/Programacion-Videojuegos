extends Area2D

var direccion := Vector2.RIGHT
var velocidad := 60.0

func _physics_process(delta: float) -> void:
	position += direccion * velocidad * delta


func _on_aviso_pantalla_screen_exited() -> void:
	queue_free()
