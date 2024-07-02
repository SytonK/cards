class_name Card
extends Resource


@export var texture: Texture
@export var to: CardManager.TO = CardManager.TO.DISCARD


func play() -> CardManager.TO:
	return to
