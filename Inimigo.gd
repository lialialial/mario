extends KinematicBody2D
var direcao = 1
var speed = 50

func _physics_process(delta):
	translate(Vector2(speed * direcao*delta, 0))




	




	


func _on_AreaImpacto_body_entered(body):
	if body is Player:
		if body.is_falling() and body.global_position.y < global_position.y:
			body.velocity.y = -250
			queue_free()
		else:
			body.die()


func _on_TimerPatrulha_timeout():
	direcao *= -1
