extends StaticBody2D
@export var activo: bool
@export var sonidos: Array[AudioStream] = []
var reproductor

func _ready() -> void:
	input_pickable = true
	reproductor = self.get_parent().get_parent().get_node("AudioStreamPlayer")
	cambiarModo()

func cambiarModo():
	if (!activo):
		$CollisionShape2D.disabled = true
		$Lleno.hide()
		$Vacio.show()
	else:
		$CollisionShape2D.disabled = false
		$Vacio.hide()
		$Lleno.show()

func _process(delta: float) -> void:
	pass

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_parent().get_parent().swapBloque():
			if activo: activo=false
			else: activo=true
			cambiarModo()
			reproductor.stream = sonidos[randi() % sonidos.size()]
			reproductor.play()
		else: pass
