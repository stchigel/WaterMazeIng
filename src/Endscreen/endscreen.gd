extends Control

func _ready() -> void:
	$Nivel.text = str(Global.nivelData.id)
	if !Global.sonido:
		$AudioStreamPlayer.volume_db=-80


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://src/Main/main.tscn")
