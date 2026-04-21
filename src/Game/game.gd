extends Node2D

@export var celda_scene: PackedScene
@onready var anchor := $GridMiddle
var pointer: bool = true
var attrForce: float = 500
var cantAguaPorSegundo = 5

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
	$Reiniciar.disabled=true
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
	cambiosActual=maxCambios
	$Cambios.text=str(cambiosActual)
	for child in anchor.get_children():
		child.queue_free()
	$waterGen.clear_water()
	generar_grilla()

func acumular_agua():
	aguaAcumulada+=1
	if(aguaAcumulada>=cantAgua*cantAguaPorSegundo):
		for child in anchor.get_children():
			child.queue_free()
		$waterGen.clear_water()
		get_tree().change_scene_to_file("res://src/Endscreen/endscreen.tscn")
