require_relative 'player_creator'
require_relative 'cards'
require_relative 'deck'

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

        puts "The game will now begin...#{@player1} will go first!\n\n"

        @deck_creator = Deck.new
        @deck_creator.shuffle
        @deck_creator.output_deck
        
    end

end