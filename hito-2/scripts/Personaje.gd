extends CharacterBody2D

var velocidad := 100.0
@onready var Animacion: AnimatedSprite2D = $Animacion
var lista_Corazones : Array[TextureRect]
var vida = 3
var golpeado := false

func _physics_process(_delta: float) -> void:
	var direccion := Input.get_vector(
		"mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
	velocity = direccion * velocidad
	move_and_slide()
	
	actualizar_animacion(direccion)
	
# sirve para iniciar el array con los corazones
func _ready() -> void:
	var padre_corazones = $HBoxContainer
	for child in padre_corazones.get_children():
		lista_Corazones.append(child)

func actualizar_animacion(direccion: Vector2) -> void:
	# Gracias a esta linea de codigo, hacemos que golpeado se ponga a true si golpeado(la variable que es false al principio y cambia a true cuando le dan un golpe) es true y si tiene una animacion(que siempre sera true porque idle y run estan en bucle) jugando entonces hace la animacion de golpeado 
	golpeado = golpeado && Animacion.is_playing()
	if golpeado:
		Animacion.play("Golpeado")
	elif direccion != Vector2.ZERO:
		Animacion.play("Run")
	else:
		Animacion.play("Idle")
		
	if direccion != Vector2.ZERO:
		Animacion.flip_h = direccion < Vector2.ZERO
		
		
# no hace la animacion de golpeado, hay que ver por que, pero almenos el personaje si que se muere
func recibir_danio():
	if vida > 0:
		vida -= 1
		golpeado = true
		actualizar_vida()
	if vida <= 0:
		queue_free()
		get_tree().change_scene_to_file("res://escenas/menu.tscn")
		
# sirve para cambiar el array y hacer que se le quiten corazones
func actualizar_vida():
	for i in range(lista_Corazones.size()):
		lista_Corazones[i].visible = i < vida
		
# TODO: arreglar el error de porque la animación no se ve, hacer un menu principal, hacer que los enemigos se muevan solos hacia el personaje y hacer que haga la animacion de golpeado en el momento que pierda vida
