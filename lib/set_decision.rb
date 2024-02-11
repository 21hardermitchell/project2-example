
class Set

    attr_reader :card_one, :card_two, :card_three

    def initialize(card_one, card_two, card_three)

        @card_one = card_one
        @card_two = card_two
        @card_three = card_three

    end

    #This method decides if a SET was found by comparing the attributes of each card.
    def decision

        if(
            (((card_one.number == card_two.number) && (card_two.number == card_three.number))||
            ((card_one.number != card_two.number) && (card_two.number != card_three.number) &&
            (card_one.number != card_three.number)))&&(((card_one.shape == card_two.shape) && (card_two.shape == card_three.shape))||
            ((card_one.shape != card_two.shape) && (card_two.shape != card_three.shape) &&
            (card_one.shape != card_three.shape)))&&(((card_one.fill == card_two.fill) && (card_two.fill == card_three.fill))||
            ((card_one.fill != card_two.fill) && (card_two.fill != card_three.fill) &&
            (card_one.fill != card_three.fill)))&&(((card_one.color == card_two.color) && (card_two.color == card_three.color))||
            ((card_one.color != card_two.color) && (card_two.color != card_three.color) &&
            (card_one.color != card_three.color))))
            
            @decision = true

        else

            @decision = false

        end
    end
end