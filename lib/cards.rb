
class Cards

     attr_reader :color, :number, :shape, :fill

     def initialize(color, number, shape, fill)
        @color = color
        @number = number
        @shape = shape
        @fill = fill
     end

     def output_cards
        puts "#{self.color} of #{self.number} of #{self.shape} of #{self.fill}"
     end

end

class Deck

    def initialize 

        @deck = []

        colors = ["Red", "Green", "Purple"]
        numbers = ["One", "Two", "Three"]
        shapes = ["Diamond", "Oval", "Squiggle"]
        fills = ["Empty", "Full", "Striped"]

        colors.each do |color|
            numbers.each do |number|
                shapes.each do |shape|
                    fills.each do |fill|
                        card = Cards.new(color, number, shape, fill)
                        @deck << card
                    end
                end
            end
        end
    end
    
    def output_deck
        @deck.each do |card|
            card.output_cards
        end
    end
end