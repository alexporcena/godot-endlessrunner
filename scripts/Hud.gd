extends Node

func _process(delta):
	$Control/LabelPontuacao.text = String(Global.pontuacao) + " PONTOS"
