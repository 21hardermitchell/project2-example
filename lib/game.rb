require_relative 'player_creator'
require_relative 'cards'

class Game

    def initialize
        @player_creator = PlayerCreator.new
    end

    def add_players
        @players = @player_creator.get_players
        puts "Welcome #{@players.join(' and ')}"
    end

    def start

        @player1 = @players[0]

        puts "The game will now begin..."

        puts "#{@player1} will go first!"

        def initialize_deck

            @card_creator = Cards.new
            @cards = @card_creator.initialize

            @deck_creator = Deck.new
            @deck = @deck_creator.initialize

            

    
        end


    end

end