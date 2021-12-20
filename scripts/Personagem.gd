extends KinematicBody2D

const GRAVIDADE = 500
const PULO = -200
var velocidade = Vector2.ZERO

func _physics_process(delta):
	velocidade.y += GRAVIDADE * delta
	
	if is_on_floor():
		$AnimationPlayer.play("correndo")
		if Input.is_action_just_pressed("pular"):
			velocidade.y = PULO
	else:
		if velocidade.y > 0:
			$AnimationPlayer.play("caindo")
		else:
			$AnimationPlayer.play("pulando")
		
	velocidade = move_and_slide(velocidade, Vector2.UP)
