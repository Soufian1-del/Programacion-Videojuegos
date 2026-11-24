extends CharacterBody2D

@export var objetivo: Node2D

@export var velocidad := 60.0
var distancia_minima := 20.0
func _physics_process(_delta: float) -> void:
	# PARA QUE SIEMPRE VEA EL OBJETIVO, si no se pone el if, entonces el juego se cerrara en el momento que deje de haber un objetivo, es decir cuando muera
	if objetivo:
		look_at(objetivo.global_position)
	if objetivo == null:
		return
	var destino := objetivo.global_position
	if global_position.distance_to(destino) > distancia_minima:
		velocity = global_position.direction_to(destino) * velocidad
	else:
		velocity = Vector2.ZERO
	move_and_slide()
