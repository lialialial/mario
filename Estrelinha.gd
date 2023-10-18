extends Area2D

signal pegou_estrela




func _on_Estrelinha_body_entered(body):
	if body.name == 'Player':
		emit_signal("pegou_estrela")
		queue_free()
