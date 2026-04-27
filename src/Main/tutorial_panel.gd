extends Panel

var texto
var imagen
var textos: Array[String] = [
	"Este es Cuppy, tu mision es hacer llegar el agua a el para que se ponga feliz",
	"Este es el campo de juego. los bloques de tierra se pueden romper o construir, cualquiera de estas dos acciones gasta 1 movimiento",
	"Esta parte es donde aparece el agua",
	"Esta es la cantidad de movimientos que te quedan",
	"Este boton es el de Home, te permite volver al menu principal",
	"Este boton es el de drop, tira el agua",
	"este es el boton de reinicio, vas a poder reiniciar cuando te quedes sin cambios o cuando se acabe el temporizador (el temporizador no termina la partida, solo te permite reiniciar)"
]
var imagenes: Array[Texture2D] = [
	preload("res://assets/tutorial/juego-meta.png"),
	preload("res://assets/tutorial/juego-tutorial.png"),
	preload("res://assets/tutorial/juego-salida.png"),
	preload("res://assets/tutorial/tutorial-cambios.png"),
	preload("res://assets/tutorial/tutorial-home.png"),
	preload("res://assets/tutorial/tutorial-drop.png"),
	preload("res://assets/tutorial/tutorial-reiniciar.png")
]
var indice_actual

func actualizar_slide(slide) -> void:
	indice_actual=slide
	if indice_actual==0:
		$Volver.disabled=true
		$Ir.disabled=false
	else: if indice_actual==textos.size()-1:
		$Ir.disabled=true
		$Volver.disabled=false
	else:
		$Volver.disabled=false
		$Ir.disabled=false
	if indice_actual < textos.size():
		texto.text = textos[indice_actual]
	if indice_actual < imagenes.size():
		imagen.texture = imagenes[indice_actual]

func _ready() -> void:
	texto=$Texto
	imagen=$Imagen
	actualizar_slide(0)

func _on_cerrar_pressed() -> void:
	indice_actual=0
	self.hide()

func _on_ir_pressed() -> void:
	if indice_actual < textos.size() - 1:
		actualizar_slide(indice_actual+1)

func _on_volver_pressed() -> void:
	if indice_actual > 0:
		actualizar_slide(indice_actual-1)
