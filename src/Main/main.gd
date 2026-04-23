extends Control
var niveles: Array[NivelData] = []

func _ready() -> void:
	niveles.append(NivelData.new(1, [
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 0, 0, 0, 0, 1, 1, 1, 1],
	[1, 1, 1, 1, 1, 0, 1, 1, 1, 1]
], [], 50, 2.0, 5))
	niveles.append(NivelData.new(2, [
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 0, 0, 1, 1, 1, 1, 1, 1],
	[1, 1, 1, 0, 1, 1, 1, 1, 1, 1],
	[1, 1, 1, 0, 0, 1, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 0, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 0, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 1, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 1, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 1, 1, 1, 1, 1]
], [], 9, 3.0, 2))
	niveles.append(NivelData.new(3, [
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 0, 0, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 0, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 0, 0, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 0, 0, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 0, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 1, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 1, 1, 1, 1, 1],
	[1, 1, 1, 1, 0, 1, 1, 1, 1, 1]
], [], 12, 2.0, 2))
	$Label.text=str(Global.puntos)
	if Global.nivelData!=null:
		match Global.nivelData.id:
			1:
				$"Level 1".disabled=true
			2:
				$"Level 2".disabled=true
			3:
				$"Level 3".disabled=true

func abrir_nivel(id: int):
	Global.nivelData = niveles[id-1]
	get_tree().change_scene_to_file("res://src/Game/game.tscn")

func _on_level_1_pressed() -> void:
	abrir_nivel(1)

func _on_level_2_pressed() -> void:
	abrir_nivel(2)

func _on_level_3_pressed() -> void:
	abrir_nivel(3)
