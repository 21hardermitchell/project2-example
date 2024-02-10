require_relative 'cards'
require_relative 'set_decision'
require_relative 'replace_cards'
require_relative 'add_cards'

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
        @initial_deck = @deck.first(12) 
        @initial_deck.each do |card|
            puts "[#{(@initial_deck.find_index(card)) + 1}]: "
            card.output_cards
        end
    end

    def output_new(size)

        @bigger_deck = @deck.first(size)
        @bigger_deck.each do |card|
            puts "[#{(@bigger_deck.find_index(card)) + 1}]: "
            card.output_cards
        end

    end
end