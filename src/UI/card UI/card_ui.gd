extends Control


@export var card: Card
@onready var texture_rect: TextureRect = $VBoxContainer/TextureRect


func _ready() -> void:
	texture_rect.texture = card.texture
