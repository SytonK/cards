class_name Card
extends Node


@export var card_resource: CardResource


func play() -> void:
	card_resource.play()
