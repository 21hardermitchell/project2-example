require_relative 'deck'

class Add 

    attr_reader :deck, :deck_pos

    def initialize(deck, deck_pos)

        @deck = deck
        @deck_pos = deck_pos

    end

    def add

        @new_deck = Deck.new(deck)

        @new_deck.output_new(deck_pos.to_i + 3)

    end

end