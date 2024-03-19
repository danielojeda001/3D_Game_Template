extends Area3D
var is_collected = false

func _on_body_entered(_body):
	global.stapler_count = global.stapler_count + 1
	queue_free()
	print("apple count", global.stapler_count)	
