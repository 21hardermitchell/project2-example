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

        puts "Game Description:\n\n"
        puts "Step 1: 12 'cards' will be dealt out to the first player.\n\n"
        puts "Step 2: The first player will have 60 seconds to look for a set amongst the cards
              and then type in the 3 card numbers associated with the card.\n\n"
        puts "Step 3: If a selection was made, the computer will review the selection and determine 
            if a set was found. If correct, the player who made the selection will recieve a point and
            new cards will replace the selected ones. If incorrect, the computer will inform the player
            of the result and prompt them for a new selection.\n\n"
        puts "Step 4: Once the 60 seconds is up, an announcement will be made that the turn is up and it 
            is now the second players turn.\n\n"
        puts "Step 5: First player to get to 5 points will be crowned the victor!\n\n"
        
        

        puts "The game will now begin...#{@player1} will go first!\n\n"

        @deck_creator = Deck.new
        @deck_creator.shuffle
        @deck_creator.output_deck


        
    end

end