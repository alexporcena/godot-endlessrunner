extends Node

const INIMIGO = preload("res://cenas/Inimigo.tscn")

func _ready():
	Global.pontuacao = 0

func _on_TimerInimigo_timeout():
	var inimigo = INIMIGO.instance()
	add_child(inimigo)


func _on_TimerPontuacao_timeout():
	Global.pontuacao += 1
