require_relative 'deck'

class Replace

    attr_reader :deck, :pos_one, :pos_two, :pos_three, :deck_pos

    def initialize(deck, pos_one, pos_two, pos_three, deck_pos)
        @deck = deck
        @pos_one = pos_one
        @pos_two = pos_two
        @pos_three = pos_three
        @deck_pos = deck_pos
    end

    #This method replaces the correct cards in the SET and then deletes the cards that were used to replace them.
    def replace

        deck[pos_one] = deck[deck_pos.to_i]
        deck[pos_two] = deck[deck_pos.to_i + 1]
        deck[pos_three] = deck[deck_pos.to_i + 2]

        deck.delete_at(deck_pos.to_i)
        deck.delete_at(deck_pos.to_i + 1)
        deck.delete_at(deck_pos.to_i + 2)

        @new_deck = Deck.new(deck)
        @new_deck.output_new(deck_pos.to_i)
        
    end
end