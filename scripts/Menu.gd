extends Node

func _ready():
	$Control/LabelRecorde.text = "SEU RECORDE É DE " + String(Global.recorde_pontuacao) + " PONTOS"

func _on_ButtonJogo_pressed():
	get_tree().change_scene("res://cenas/Jogo.tscn")
