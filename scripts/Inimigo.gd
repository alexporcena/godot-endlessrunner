extends Area2D

const POSICOES_Y = [205, 160]

var velocidade = 5
var posicao_y = 205

func _ready():
	
	randomize()
	
	position.x = 550
	
	posicao_y = POSICOES_Y[randi() % POSICOES_Y.size()]
	position.y = posicao_y
	
	if posicao_y == 160:
		$AnimatedSprite.play("passaro")
		$CollisionPolygon2DHomem.disabled = true
		$CollisionPolygon2DPassaro.disabled = false
	else:
		$AnimatedSprite.play("homem")
		$CollisionPolygon2DPassaro.disabled = false
		$CollisionPolygon2DHomem.disabled = true

func _physics_process(delta):
	position.x -= velocidade
