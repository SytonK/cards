extends Node


@export var card: Card


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("example"):
		card.play()
