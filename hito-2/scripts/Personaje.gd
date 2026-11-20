extends CharacterBody2D

var velocidad := 100.0
@onready var Animated: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(_delta: float) -> void:
	var direccion := Input.get_vector(
		"mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
	velocity = direccion * velocidad
	move_and_slide()
	if Input.is_action_pressed("mover_abajo"):
		Animated.play("Run")
	if Input.is_action_pressed("mover_arriba"):
		Animated.play("Run")
	if Input.is_action_pressed("mover_izquierda"):
		Animated.play("Run")
	if Input.is_action_pressed("mover_derecha"):
		Animated.play("Run")
	if Input.is_action_just_released("mover_abajo"):
		Animated.play("Idle")
	if Input.is_action_just_released("mover_arriba"):
		Animated.play("Idle")
	if Input.is_action_just_released("mover_izquierda"):
		Animated.play("Idle")
	if Input.is_action_just_released("mover_derecha"):
		Animated.play("Idle")
