extends Node2D

@export var celda_scene: PackedScene
@onready var anchor := $GridMiddle
var pointer: bool = true
var attrForce: float = 500
var cantAguaPorSegundo = 60
var cantAguaParaGanar = 0.5

var id: int
var maxCambios: int
var mapa: Array[Array]
var matrizSolucion: Array[Array]
var cantAgua: float
var cantPistas: int
var nivelData: NivelData

func asignar_variables():
	nivelData = Global.nivelData
	id=nivelData.id
	maxCambios=nivelData.maxCambios
	mapa=nivelData.mapa
	matrizSolucion=nivelData.matrizSolucion
	cantAgua=nivelData.cantAgua
	cantPistas=nivelData.cantPistas

var cambiosActual
var pistasActual
var aguaAcumulada

func swapBloque():
	if cambiosActual>0:
		cambiosActual-=1
		$Cambios.text=str(cambiosActual)
		if cambiosActual==0: 
			$Reiniciar.disabled=false
		return true
	else:
		return false

const GRID_SIZE := 10
const CELL_SIZE := 60

func _ready():
	asignar_variables()
	$CountdownLabel.visible = false
	$Reiniciar.disabled=true
	$AguaRecibida.max_value = cantAgua*cantAguaPorSegundo*cantAguaParaGanar
	cambiosActual=maxCambios
	$Cambios.text=str(cambiosActual)
	$Timer.wait_time=nivelData.cantAgua
	aguaAcumulada=0
	generar_grilla()

func generar_grilla():
	var total_size = GRID_SIZE * CELL_SIZE
	var half_size = total_size / 2
	for x in GRID_SIZE:
		for y in GRID_SIZE:
			var celda = celda_scene.instantiate()
			if mapa[y][x] == 0: 
				celda.activo = false
			celda.position = Vector2(x * CELL_SIZE - half_size, y * CELL_SIZE - half_size)
			anchor.add_child(celda)


func _on_reiniciar_pressed() -> void:
	$Reiniciar.disabled=true
	$Play.disabled = false
	$CountdownLabel.visible = false
	$Timer2.stop()
	aguaAcumulada=0
	$AguaRecibida.value = 0
	cambiosActual=maxCambios
	$Cambios.text=str(cambiosActual)
	for child in anchor.get_children():
		child.queue_free()
	$waterGen.clear_water()
	$waterGen.accumulator = 0
	generar_grilla()

func _process(delta: float) -> void:
	if $"Timer2".time_left > 0:
		$"CountdownLabel".text = str(int(ceil($"Timer2".time_left)))

func acumular_agua():
	aguaAcumulada+=1
	$AguaRecibida.value += 1
	if(aguaAcumulada>=cantAgua*cantAguaPorSegundo*cantAguaParaGanar):
		call_deferred("_finalizar")
		#Acá usé call_deferred porque me salia error

func _finalizar():
	for child in anchor.get_children():
		child.queue_free()
	$waterGen.clear_water()
	get_tree().change_scene_to_file("res://src/Endscreen/endscreen.tscn")
