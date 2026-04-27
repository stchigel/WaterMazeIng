extends Sprite2D

var tw: Tween
var start_scale: Vector2
var sound = load("res://assets/sonidos/gota.wav")

func _ready() -> void:
	start_scale = scale

func pop():
	if tw:
		tw.kill()
	tw = create_tween()
	tw.set_trans(Tween.TRANS_SINE)
	tw.tween_property(self, "scale", start_scale * 1.1, 0.12)
	tw.tween_property(self, "scale", start_scale, 0.12)
	if $"../../AudioStreamPlayer".stream != sound:
		$"../../AudioStreamPlayer".stream = sound
		$"../../AudioStreamPlayer".play()
	$"../../AudioStreamPlayer".play()
	await tw.finished
