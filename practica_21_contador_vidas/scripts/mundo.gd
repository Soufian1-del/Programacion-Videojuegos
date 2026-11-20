extends Node2D

@onready var marcador: Label = $Interfaz/Vidas
@onready var personaje: CharacterBody2D = $Personaje

func _ready() -> void:
	_on_personaje_vidas_cambiadas(personaje.vidas)

func _on_personaje_vidas_cambiadas(vidas_actuales: int) -> void:
	marcador.text = "Vidas: " + str(vidas_actuales) + "/"
