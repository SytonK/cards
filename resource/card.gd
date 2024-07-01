class_name Card
extends Resource


@export var to: CardManager.TO = CardManager.TO.DISCARD


func play() -> CardManager.TO:
	return to
