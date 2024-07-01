extends Node

var card_manager: CardManager



func _ready() -> void:
	card_manager = CardManager.new()
	card_manager.deck = [Card.new(), Card.new(), Card.new()]
	for card: Card in card_manager.deck:
		card.card_resource = CardResource.new()
	card_manager.deck_is_empty.connect(_on_deck_is_empty)


func _on_deck_is_empty() -> void:
	print('_on_deck_is_empty')


func _on_button_draw_pressed() -> void:
	card_manager.draw()


func _on_button_play_0_pressed() -> void:
	card_manager.play(0)
