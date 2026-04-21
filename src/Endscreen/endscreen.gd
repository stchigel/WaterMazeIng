extends Control

func _ready() -> void:
	$Nivel.text = str(Global.nivelData.id)
	Global.puntos+=Global.nivelData.id*10


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://src/Main/main.tscn")
