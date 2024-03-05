extends Area3D
@export var respawn_point : Node3D

func _on_body_entered(body):
	pass
	body.position= respawn_point.position
	
