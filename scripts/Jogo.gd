extends Node

const INIMIGO = preload("res://cenas/Inimigo.tscn")

func _on_TimerInimigo_timeout():
	var inimigo = INIMIGO.instance()
	add_child(inimigo)
