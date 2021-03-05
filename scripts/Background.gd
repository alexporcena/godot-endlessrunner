extends Sprite

export var velocidade = 1.0
var largura_inicial = 0.0

func _ready():
	largura_inicial = texture.get_width() * scale.x

func _physics_process(delta):
	position.x = position.x - velocidade
	
	if position.x < -largura_inicial:
		position.x = position.x + largura_inicial * 2
			
