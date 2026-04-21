extends Control
var niveles: Array[NivelData] = []

# Called when the node enters the scene tree for the first time.
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
], [], 50, 1.0, 5))
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
], [], 9, 1.0, 2))
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

func abrir_nivel(id: int):
	var game = load("res://src/Game/game.tscn").instantiate()
	game.nivelData = niveles[id-1]
	get_tree().root.add_child(game)
	queue_free()

func _on_level_1_pressed() -> void:
	abrir_nivel(1)

func _on_level_2_pressed() -> void:
	abrir_nivel(2)

func _on_level_3_pressed() -> void:
	abrir_nivel(3)
