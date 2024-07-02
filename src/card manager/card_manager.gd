class_name CardManager
extends Node


signal deck_is_empty

enum TO {
	DISCARD,
	IN_PLAY
}

@export var deck: Array[Card]
var hand: Array[Card] = []
var in_play: Array[Card] = []
var discard: Array[Card] = []


func draw() -> bool:
	if deck.size() > 0:
		var card = deck.pop_front()
		hand.append(card)
		return true
	else:
		deck_is_empty.emit()
		return false

func play(card_index: int) -> void:
	if card_index > hand.size() - 1:
		return
	
	var card: Card = hand.pop_at(card_index)
	var card_to: TO = card.play()
	match card_to:
		TO.DISCARD:
			discard.push_back(card)
		TO.IN_PLAY:
			in_play.push_back(card)

func discard_at_index(card_index: int) -> void:
	if card_index > hand.size() - 1:
		return
	
	discard.push_back(hand.pop_at(card_index))

func discard_to_deck_bottom() -> void:
	deck.append_array(discard)
	discard = []

func from_play_to_discard(card_index: int) -> void:
	if card_index > in_play.size() - 1:
		return
	
	var card: Card = in_play.pop_at(card_index)
	discard.push_back(card)
