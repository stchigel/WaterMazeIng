extends Node2D

@export var celda_scene: PackedScene
@onready var anchor := $GridMiddle
var pointer: bool = true
var attrForce: float = 500
var maxCambios = 5
var cambiosActual = 5

var mapa = [
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
]

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
	$Reiniciar.disabled=true
	cambiosActual=maxCambios
	$Cambios.text=str(cambiosActual)
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
