require_relative 'deck'
require_relative 'cards'

class Replace

    attr_reader :deck, :pos_one, :pos_two, :pos_three, :deck_pos

    def initialize(deck, pos_one, pos_two, pos_three, deck_pos)
        @deck = deck
        @pos_one = pos_one
        @pos_two = pos_two
        @pos_three = pos_three
        @deck_pos = deck_pos
    end

    def replace

        deck[pos_one] = deck[deck_pos + 1]
        deck[pos_two] = deck[deck_pos + 2]
        deck[pos_three] = deck[deck_pos + 3]

        @new_deck = Deck.new(deck)
        @new_deck.output_new
    end
end