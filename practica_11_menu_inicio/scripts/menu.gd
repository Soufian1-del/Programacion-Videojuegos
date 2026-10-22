extends Control

@onready var Sonido: AudioStreamPlayer2D = $Centro/Caja/BotonJugar/Sonido

func _on_boton_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://escenas/Juego.tscn")
	Sonido.play()

func _on_boton_salir_pressed() -> void:
	get_tree().quit()
	
