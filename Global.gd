extends Node

var nivelData: NivelData
var puntos: int
var rebirths: int
var ganados: Array[int]
var sonido: bool

func _ready():
	puntos=0
	Global.nivelData=null
	sonido=true
	rebirths=0

func reiniciar():
	puntos=0
	rebirths+=1
	Global.nivelData=null
	ganados.clear()
