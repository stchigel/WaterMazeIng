class_name NivelData

var id: int
var mapa: Array[Array]
var matrizSolucion: Array[Array]
var maxCambios: int
var cantAgua: float
var cantPistas: int

func _init(_id: int, _mapa: Array[Array], _matrizSolucion: Array[Array], _maxCambios: int, _cantAgua: float, _cantPistas: int):
	id = _id
	mapa = _mapa
	matrizSolucion = _matrizSolucion
	maxCambios = _maxCambios
	cantAgua = _cantAgua
	cantPistas = _cantPistas
