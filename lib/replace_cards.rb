require_relative 'deck'

class Replace

    attr_reader :deck, :pos_one, :pos_two, :pos_three

    def initialize(deck, pos_one, pos_two, pos_three)
        @deck = deck
        @pos_one = pos_one
        @pos_two = pos_two
        @pos_three = pos_three
    end

    def replace

        @deck[pos_one] = @deck.shift
        @deck[pos_two] = @deck.shift
        @deck[pos_three] = @deck.shift

    end
end