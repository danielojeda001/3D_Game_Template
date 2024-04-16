
extends Control

#func _on_collectible_item_collected():
	#$CenterContainer/AppleCount.text = str(global.apple_count)

func _on_stapler_item_collected():
	$Stapler/StaplerCount.text = str(global.stapler_count)


func _on_toilet_paper_item_collected():
	$ToiletPaler/ToiletCount.text = str(global.Toilet_Count)


func _on_pen_item_collected():
	$Pen/Label.text = str(global.Pen_Count)


func _on_paper_clip_item_collected():
	$Clips/Label.text = str(global.paper_clip_count)
