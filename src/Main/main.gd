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
	], 50, 4.0))
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
	], 3, 5.0))
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
	], 12, 6.0))
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
	], 6, 6.0))
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
	], 10, 6.0))
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
	], 15, 6.0))
	$Label.text=str(Global.puntos)
	$Label3.text=str(Global.rebirths)
	$TutorialPanel.hide()
	$CreditosPanel.hide()
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



func _on_sonido_pressed() -> void:
	Global.sonido=!Global.sonido
	if Global.sonido:
		$Sonido.icon=load("res://assets/botones/sound-on.png")
	else:
		$Sonido.icon=load("res://assets/botones/mute.png")


func _on_si_pressed() -> void:
	Global.reiniciar()
	get_tree().reload_current_scene()


func _on_tutorial_pressed() -> void:
	$TutorialPanel.show()

func _on_cerrar_pressed() -> void:
	$CreditosPanel.hide()

func _on_creditos_pressed() -> void:
	$CreditosPanel.show()
