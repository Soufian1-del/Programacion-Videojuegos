extends CharacterBody2D

const ESCENA_PROYECTIL := preload("res://escenas/proyectil.tscn")
var velocidad := 100.0

func _physics_process(_delta: float) -> void:
	var direccion := Input.get_vector(
		"mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
	velocity = direccion * velocidad
	move_and_slide()

	if Input.is_action_just_pressed("disparar"):
		disparar()

func disparar() -> void:
	var proyectil := ESCENA_PROYECTIL.instantiate()
	proyectil.global_position = global_position
	proyectil.direccion = global_position.direction_to(get_global_mouse_position())
	get_parent().add_child(proyectil)
