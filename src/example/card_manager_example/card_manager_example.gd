extends Node

@onready var card_manager: CardManager = $CardManager

func _on_button_pressed() -> void:
	card_manager.draw()


func _on_button_0_pressed() -> void:
	card_manager.play(0)


func _on_button_1_pressed() -> void:
	card_manager.play(1)


func _on_button_2_pressed() -> void:
	card_manager.play(2)


func _on_button_discard_pressed() -> void:
	card_manager.discard_to_deck_bottom()


func _on_button_in_play_to_discard_pressed() -> void:
	card_manager.from_play_to_discard(0)
