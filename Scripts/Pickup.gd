extends Area3D

@onready var hand = $"../Hand"
@onready var camera = $".."

var pull_speed = 2

var pickup_object = null
var is_picked = false

func _physics_process(delta):
	if pickup_object and is_picked:
		var obj_pos = pickup_object.global_transform.origin
		var hand_pos = hand.global_transform.origin
		var dir = (hand_pos - obj_pos).normalized()*pull_speed
		pickup_object.set_linear_velocity(dir)

func _unhandled_input(event):
	
	if Input.is_action_just_pressed("pickup"):
		if pickup_object:
			if is_picked: 
				pickup_object = null
				is_picked = false
			else:
				is_picked = true
	if Input.is_action_just_pressed("throw"):
		var dir = -camera.global_transform.basis.z.normalized()
		pickup_object.apply_impulse(dir)
		pickup_object = null
		is_picked = false
		
func _on_body_entered(body):
	if pickup_object and is_picked:
		return
	pickup_object = body
