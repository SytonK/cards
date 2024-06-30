class_name CardManager
extends Node

@export var deck: Array[Card]
var hand: Array[Card] = []
var discard: Array[Card] = []
var in_play: Array[Card] = []


func draw() -> bool:
	if deck.size() > 0:
		var card = deck.pop_back()
		hand.append(card)
		return true
	else:
		return false
