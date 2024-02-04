require_relative 'deck'

class Set

    def initialize(card_one, card_two, card_three)
        @card_one = card_one
        @card_two = card_two
        @card_three = card_three
    end

    def decision

        puts @card_one
        puts @card_two
        puts @card_three

    end

end