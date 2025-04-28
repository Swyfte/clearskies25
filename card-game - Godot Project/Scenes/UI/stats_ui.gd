class_name StatsUI
extends HBoxContainer

@onready var block: HBoxContainer = $Block
@onready var block_label: Label = %BlockLabel
@onready var health: HBoxContainer = $Health
@onready var health_label: Label = %HealthLabel

func update_stats(stats: Stats) -> void:
	block_label.text = str(stats.block)
	block.visible = stats.block > 0
	
	health_label.text = str(stats.health)
	health.visible = stats.health > 0
