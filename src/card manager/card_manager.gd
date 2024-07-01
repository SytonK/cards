class_name CardManager
extends Node


signal deck_is_empty


@export var deck: Array[Card]
var hand: Array[Card] = []
var discard: Array[Card] = []


func draw() -> bool:
	if deck.size() > 0:
		var card = deck.pop_back()
		hand.append(card)
		return true
	else:
		deck_is_empty.emit()
		return false

func play(card_index: int) -> void:
	if card_index > hand.size():
		return
	
	var card: Card = hand.pop_at(card_index)
	card.play()
	discard.push_back(card)
