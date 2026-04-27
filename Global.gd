extends Node

var nivelData: NivelData
var puntos: int
var rebirths: int
var ganados: Array[int]
var sonido: bool
var aguaEnNivel: int #Aclaro que, al pesar del nombre, en realidad es el agua total - lo borrado por la prevencion de noclip´

func _ready():
	puntos=0
	Global.nivelData=null
	sonido=true
	rebirths=0
	aguaEnNivel=0

func reiniciar():
	puntos=0
	rebirths+=1
	Global.nivelData=null
	ganados.clear()
	aguaEnNivel=0
