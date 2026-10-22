extends CharacterBody2D

var velocidad := 100.0
var gravedad := 600.0
var fuerza_salto := 250.0

func _physics_process(delta: float) -> void:
	velocity.y += gravedad * delta
	if Input.is_action_just_pressed("Saltar"):
		velocity.y = -fuerza_salto
	if Input.is_action_just_pressed("sprint"):
		velocidad = 200
	if Input.is_action_just_released("sprint"):
		velocidad = 100
	var direccion := Input.get_axis("mover_izquierda", "mover_derecha")
	velocity.x = direccion * velocidad
	move_and_slide()


func _on_medusa_body_entered(body: Node2D) -> void:
		velocity.y = -600
