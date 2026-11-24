extends Node2D

#le decimos que va a spawnear y que va a seguir
@export var objetivo: Node2D
@export var escena_enemigo : PackedScene
@export var zona := Rect2(100, 100, 400, 300)  # x, y, ancho, alto

func _on_timer_timeout() -> void:
	print("timer disparado")
	# le decimos que la isntanciacion del objetivo no es valida return(es decir q no existe el objet)
	if not is_instance_valid(objetivo):
		print("objeto vacio")
		return
	print("spawning...")
	
	var enemigo = escena_enemigo.instantiate()
	#con esta linea le decimos a quien tiene q perseguir porque la copia no sabe quien es el objetivo, como arriba le deciamos que el objetivo era un nodo2D(y en el editor le decimos que nodo exactamente) lo usa pra averiguar a quien persigue
	enemigo.objetivo = objetivo
	#con esta linea de abajo spawneamos a los enemigos, con el instantiate solo lo dejamos en memoria
	add_child(enemigo)	
	
	enemigo.global_position = Vector2(
		randf_range(zona.position.x, zona.end.x),
		randf_range(zona.position.y, zona.end.y))
# TODO: hacer el spawner, ver errores
