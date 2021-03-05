extends KinematicBody2D

var gravidade = 10
var posicao = Vector2.ZERO
var pulo = 300

func _physics_process(delta):
	posicao.y += gravidade
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			posicao.y -= pulo
			$CollisionPolygon2DAbaixando.disabled = true
			$CollisionPolygon2DCorrendo.disabled = false
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
