extends Control
var niveles: Array[NivelData] = []

func _ready() -> void:
	if Global.sonido:
		$Sonido.icon=load("res://assets/botones/sound-on.png")
	else:
		$Sonido.icon=load("res://assets/botones/mute.png")
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
], [], 50, 4.0, 5))
	niveles.append(NivelData.new(2, [
	[1, 0, 1, 1, 1, 0, 1, 1, 0, 1],
	[1, 0, 0, 0, 1, 0, 1, 0, 0, 0],
	[1, 0, 1, 0, 0, 0, 1, 0, 1, 1],
	[1, 0, 1, 1, 1, 0, 0, 0, 1, 1],
	[1, 0, 0, 0, 1, 1, 1, 0, 0, 1],
	[1, 1, 1, 0, 0, 0, 1, 1, 0, 1],
	[1, 0, 0, 0, 1, 0, 0, 1, 0, 1],
	[1, 0, 1, 1, 1, 1, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 1, 1, 0, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1]
], [], 3, 5.0, 2))
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
], [], 12, 6.0, 2))
	niveles.append(NivelData.new(4, [
	[1, 0, 1, 1, 1, 1, 1, 1, 0, 1],
	[1, 0, 0, 0, 0, 0, 1, 0, 0, 1],
	[1, 0, 1, 1, 1, 0, 1, 0, 1, 1],
	[1, 0, 1, 0, 0, 0, 1, 0, 0, 1],
	[1, 0, 1, 0, 1, 1, 1, 1, 0, 1],
	[1, 0, 0, 0, 1, 0, 0, 0, 0, 1],
	[1, 1, 1, 0, 1, 0, 1, 1, 1, 1],
	[1, 0, 0, 0, 1, 0, 0, 0, 0, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 0, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1]
], [], 6, 6.0, 2))
	niveles.append(NivelData.new(5, [
	[1, 0, 1, 1, 1, 1, 1, 1, 0, 1],
	[1, 0, 1, 0, 0, 0, 1, 0, 0, 1],
	[1, 0, 1, 0, 1, 0, 1, 0, 1, 1],
	[1, 0, 0, 0, 1, 0, 0, 0, 1, 1],
	[1, 1, 1, 1, 1, 1, 1, 0, 1, 1],
	[1, 0, 0, 0, 0, 0, 1, 0, 0, 1],
	[1, 0, 1, 1, 1, 0, 1, 1, 0, 1],
	[1, 0, 1, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1]
], [], 10, 6.0, 2))
	niveles.append(NivelData.new(6, [
	[1, 0, 1, 1, 1, 1, 1, 1, 0, 1],
	[1, 0, 1, 0, 0, 1, 0, 0, 0, 1],
	[1, 0, 1, 0, 1, 1, 0, 1, 1, 1],
	[1, 0, 0, 0, 1, 0, 0, 1, 0, 1],
	[1, 1, 1, 1, 1, 0, 1, 1, 0, 1],
	[1, 0, 0, 0, 1, 0, 0, 0, 0, 1],
	[1, 0, 1, 0, 1, 1, 1, 1, 1, 1],
	[1, 0, 1, 0, 0, 0, 1, 0, 0, 1],
	[1, 0, 1, 1, 1, 0, 1, 0, 1, 1],
	[1, 0, 1, 1, 1, 1, 1, 1, 1, 1]
], [], 15, 6.0, 2))
	$Label.text=str(Global.puntos)
	$Label3.text=str(Global.rebirths)
	
	var botones = $Botones.get_children()
	for i in botones.size():
		botones[i].pressed.connect(abrir_nivel.bind(i + 1))
		if Global.ganados.has(i+1):
			botones[i].disabled=true

	if Global.ganados.size()!=6:
		$PreguntaFondo.hide()
		$VolAEmp.hide()
		$Si.hide()

func abrir_nivel(id: int):
	if not is_inside_tree():
		return
	Global.nivelData = niveles[id-1]
	get_tree().change_scene_to_file("res://src/Game/game.tscn")

func _on_level_1_pressed() -> void:
	abrir_nivel(1)

func _on_level_2_pressed() -> void:
	abrir_nivel(2)

func _on_level_3_pressed() -> void:
	abrir_nivel(3)

func _on_level_4_pressed() -> void:
	abrir_nivel(4)

func _on_level_5_pressed() -> void:
	abrir_nivel(5)

func _on_level_6_pressed() -> void:
	abrir_nivel(6)


func _on_sonido_pressed() -> void:
	Global.sonido=!Global.sonido
	if Global.sonido:
		$Sonido.icon=load("res://assets/botones/sound-on.png")
	else:
		$Sonido.icon=load("res://assets/botones/mute.png")


func _on_si_pressed() -> void:
	Global.reiniciar()
	get_tree().reload_current_scene()
