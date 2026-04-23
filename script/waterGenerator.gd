extends Node2D

var objects: Array[RigidBody2D] = []

@export var tex: Texture2D
@export var spawnRad: float
var texSize: float = 48
var attrForce: float = 0.0
var distanciaAguas = 6480
var dropping = false


func create_object(pos: Vector2) -> void:
	var body := RigidBody2D.new()
	body.mass = 0.1
	body.lock_rotation = true
	body.can_sleep = false
	body.collision_layer = 1
	body.collision_mask = 1

	var shape := CollisionShape2D.new()
	var cir_shape := CircleShape2D.new()
	cir_shape.radius = 8
	cir_shape.custom_solver_bias = 0.1
	shape.shape = cir_shape
	body.add_child(shape)

	var mat := PhysicsMaterial.new()
	mat.friction = 0.1
	body.physics_material_override = mat

	var sprite := Sprite2D.new()
	sprite.texture = tex
	if tex:
		sprite.scale = Vector2(texSize / tex.get_width(), texSize / tex.get_height())
	body.add_child(sprite)

	add_child(body)
	body.global_position = pos
	objects.append(body)

func _physics_process(_delta: float) -> void:
	var i := objects.size() - 1
	while i >= 0:
		var body: RigidBody2D = objects[i]
		if body.global_position.y > distanciaAguas:
			body.queue_free()
			objects.remove_at(i)
		else:
			body.constant_force = Vector2.ZERO
		i -= 1

func _exit_tree() -> void:
	clear_water()

func _process(_delta: float) -> void:
	attrForce = get_parent().attrForce
	if dropping:
		create_object(global_position + Vector2(randf() - 0.5, randf() - 0.5).normalized() * spawnRad * randf())

func _on_play_pressed() -> void:
	dropping = true
	$"../Play".disabled = true
	$"../Timer".start()
	$"../Timer2".start()
	$"../CountdownLabel".visible = true

func _on_timer_timeout() -> void:
	dropping = false
	

func _on_timer_2_timeout() -> void:
	$"../Reiniciar".disabled = false
	$"../CountdownLabel".visible = false

func clear_water() -> void:
	for body in objects:
		body.queue_free()
	objects.clear()

func _on_meta_body_entered(body: Node2D) -> void:
	if body is RigidBody2D and objects.has(body):
		objects.erase(body)
		body.queue_free()
		get_parent().acumular_agua()
