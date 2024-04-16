extends Area3D

@export var type = "apple"
var is_collected = false
signal item_collected

func _on_body_entered(body):
	print(body)
	# when player enters
	if type == "stapler":
		global.stapler_count = global.stapler_count + 1
	if type == "ToiletPaper":
		global.Toilet_Count = global.Toilet_Count + 1
	if type == "Pen":
		global.Pen_Count = global.Pen_Count + 1
	if type == "PaperClip":
		global.paper_clip_count = global.paper_clip_count + 1
	is_collected = true
	#body.play_pickup_sound()
	emit_signal("item_collected")
	queue_free() # remove object f
