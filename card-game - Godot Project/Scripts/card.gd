extends Node2D

signal hovered
signal unhovered

var hand_position

func _ready() -> void:
	# All cards must be child of card manager
	get_parent().connect_card_signals(self)
	
func _on_area_2d_mouse_entered() -> void:
	#print("hovered")
	emit_signal("hovered", self)


func _on_area_2d_mouse_exited() -> void:
	#print("un-hovered")
	emit_signal("unhovered", self)
