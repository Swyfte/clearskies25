extends Node2D

func _ready() -> void:
	$"Card Name Sprite/Card Name Label".text = "Card name"
	$"Card Effects Sprite/Card Effects Label".text = "Some Effect" + "Overcharge Effect" + "Flavour text"
	$"Card Base Gray Sprite".visible = true
	$"Card Base Blue Sprite".visible = false
var cardBaseSprite = 0
var cardBase = "Blue"


func decideCardBase():
	if cardBase == "Blue":
		$"Card Base Blue Sprite".visible = true
	else:
		$"Card Base Gray Sprite".visible = true
