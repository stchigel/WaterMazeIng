class_name NivelData

var id: int
var mapa: Array[Array]
var maxCambios: int
var cantAgua: float

func _init(_id: int, _mapa: Array[Array], _maxCambios: int, _cantAgua: float):
	id = _id
	mapa = _mapa
	maxCambios = _maxCambios
	cantAgua = _cantAgua
