extends KinematicBody2D

const GRAVIDADE = 20
const PULO = 480

var posicao = Vector2.ZERO

func _physics_process(delta):
	posicao.y += GRAVIDADE
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			posicao.y -= PULO
			$CollisionPolygon2DAbaixando.disabled = true
			$CollisionPolygon2DCorrendo.disabled = false
			$AudioStreamPlayer.play()
		elif Input.is_action_pressed("ui_down"):
			$AnimatedSprite.play("abaixando")
			$CollisionPolygon2DCorrendo.disabled = true
			$CollisionPolygon2DAbaixando.disabled = false
		else:
			$AnimatedSprite.play("correndo")
			$CollisionPolygon2DAbaixando.disabled = true
			$CollisionPolygon2DCorrendo.disabled = false
	else:
		$AnimatedSprite.play("pulando")
	
	posicao = move_and_slide(posicao, Vector2.UP)
