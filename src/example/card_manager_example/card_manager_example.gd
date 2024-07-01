extends Node

var card_manager: CardManager



func _ready() -> void:
	card_manager = CardManager.new()
	card_manager.deck = [Card.new(), Card.new(), Card.new()]
	card_manager.deck_is_empty.connect(_on_deck_is_empty)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("example"):
		card_manager.draw()


func _on_deck_is_empty() -> void:
	print('_on_deck_is_empty')
