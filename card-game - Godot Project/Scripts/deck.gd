extends Node2D

const CARD_SCENE_PATH = "res://Scenes/card.tscn"
const CARD_DRAW_SPEED = 0.1

var player_deck = ["Water", "Wind", "Solar", "Plant"]
var card_database_reference

func _ready() -> void:
	player_deck.shuffle()
	$DeckCount.text = str(player_deck.size())
	$Deck.visible = true
	$"Empty Deck".visible = false
	card_database_reference = preload("res://Scripts/card_database.gd")

func draw_card():
	var card_drawn_name = player_deck[0]
	player_deck.erase(card_drawn_name)
	
	# If player drew the last card, disable drawing
	if player_deck.size() == 0:
		$Area2D/CollisionShape2D.disabled = true
		$Deck.visible = false
		$"Empty Deck".visible = true
	
	var card_scene = preload(CARD_SCENE_PATH)
	var new_card = card_scene.instantiate()
	
	
	# Sets the card image:
	var card_image_path = str("res://Assets/" + card_drawn_name + "Card.png")
	new_card.get_node("CardImage").texture = load(card_image_path)
	
	# Sets the card type image:
	var card_type_image_path = str("res://Assets/Sprites/" + card_drawn_name + "Type.png")
	new_card.get_node("CardType").texture = load(card_type_image_path)
	

	
	new_card.get_node("Attack").text = str(card_database_reference.CARDS[card_drawn_name][0])
	new_card.get_node("Health").text = str(card_database_reference.CARDS[card_drawn_name][1])
	$"../CardManager".add_child(new_card)
	new_card.name = "Card"
	$"../PlayerHand".add_card_to_hand(new_card, CARD_DRAW_SPEED)
	$DeckCount.text = str(player_deck.size())
