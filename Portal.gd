extends Area2D



func _on_Portal_body_entered(body):
	if body is Player:
		Global.level += 1
		get_tree().change_scene("res://cenas/Level" + str(Global.level) + ".tscn")
