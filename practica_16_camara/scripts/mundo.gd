extends Node2D

var puntos := 0

@onready var marcador: Label = $Interfaz/Puntos
@onready var camara: Camera2D = $Personaje/Camara
var puedo = true
func _ready() -> void:
	actualizar_marcador()


func _on_moneda_recogida() -> void:
	puntos += 1
	actualizar_marcador()
	temblor()

func actualizar_marcador() -> void:
	marcador.text = "Puntos: " + str(puntos)

func temblor() -> void:
	if puedo == true:
		camara.offset.x = 5
		camara.offset.y = 5
	if puedo == false:
		camara.offset.x = 0
		camara.offset.y= 0

func _on_timer_timeout() -> void:
	if puedo == true:
		puedo = false
	if puedo == false:
		puedo =true
