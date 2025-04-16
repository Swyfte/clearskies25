class_name Effect

extends Node

enum TriggerTime {TURN_START, TURN_END}

@export var effectName: String
@export var description: String
@export var magnitude: int:
	set(value):
		magnitude = clamp(value, 0, 3)
@export var effectTrigger: TriggerTime

signal trigger
