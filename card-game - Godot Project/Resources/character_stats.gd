class_name CharacterStats
extends Stats

#@export var starting_deck: Deck
@export var draw_count: int = 4
@export var hand_size: int = 8
@export var max_energy: int = 3

var energy: int : set = set_energy
var deck
var discard
var draw_pile

func set_energy(value: int) -> void:
	energy = value
	stats_changed.emit()

func reset_energy() -> void:
	self.energy = max_energy

#func can_play_card(card: Card) -> bool:
	#return mana >= card.cost

func create_instance() -> Resource:
	var instance: Stats = self.duplicate()
	instance.health = max_health
	instance.block = 0
	instance.reset_energy()
	#instance.deck = instance.starting_deck.duplicate()
	#instance.draw_pile = cardpile.new()
	#instance.discard = cardpile.new()
	return instance
