extends Node


@onready var card_manager: CardManager = $CardManager


func _ready() -> void:
	card_manager.deck.shuffle()


func _on_button_draw_pressed() -> void:
	card_manager.draw()

func _on_button_play_0_pressed() -> void:
	card_manager.play(0)

func _on_button_play_1_pressed() -> void:
	card_manager.play(1)

func _on_button_play_2_pressed() -> void:
	card_manager.play(2)

func _on_card_manager_deck_is_empty() -> void:
		print('_on_deck_is_empty')




