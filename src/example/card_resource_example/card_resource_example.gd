class_name ExampleCardResource
extends Card

@export var text: String

func play() -> CardManager.TO:
	print(text)
	return to
