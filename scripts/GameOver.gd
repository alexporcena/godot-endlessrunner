extends Node

func _ready():
	$Control/LabelPontuacao.text = "SUA PONTUAÇÃO FOI DE " + String(Global.pontuacao) + " PONTOS"

func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://cenas/Jogo.tscn")


func _on_ButtonMenu_pressed():
	get_tree().change_scene("res://interface/Menu.tscn")
