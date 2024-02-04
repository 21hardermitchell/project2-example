require_relative 'cards'

class Deck

    def initialize(deck)

        @deck = deck

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

    def shuffle
        @deck.shuffle!
    end

    def output_deck   
            @initialDeck = @deck.first(12) 
            @initialDeck.each do |card|
                puts "[#{(@initialDeck.find_index(card)) + 1}]: "
                card.output_cards
            end
    end
end