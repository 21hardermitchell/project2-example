require_relative 'deck'

class Set

    attr_reader :card_one, :card_two, :card_three

    def initialize(card_one, card_two, card_three)
        @card_one = card_one
        @card_two = card_two
        @card_three = card_three
    end

    def decision

        puts "#{self.card_one}"
        puts "#{self.card_two}"
        puts "#{self.card_three}"

    end

end