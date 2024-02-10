require_relative 'player_creator'
require_relative 'deck'
require_relative 'set_decision'
require_relative 'replace_cards'
require_relative 'add_cards'

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
        puts "Step 2: The first player will have 60 seconds to look for a set amongst the cards and then type in the 3 card numbers associated with the card.\n\n"
        puts "Step 3: If a selection was made, the computer will review the selection and determine if a set was found. If correct, the player who made the selection will recieve a point and new cards will replace the selected ones. If incorrect, the computer will inform the player of the result and prompt them for a new selection.\n\n"
        puts "Step 4: Once the 60 seconds is up, an announcement will be made that the turn is up and it is now the second players turn.\n\n"
        puts "Step 5: First player to get to 5 points will be crowned the victor!\n\n"

        puts "The game will begin in 10 seconds!...#{@player1} will go first!\n\n"
        puts "If no SET can be found on the screen type ADD for 3 more cards!\n\n"

        sleep 2

        @current_player_number = 0
        @player1_score = 0
        @player2_score = 0

        deck = []
        @deck_creator = Deck.new(deck)
        @deck_creator.shuffle
        @deck_creator.output_deck

        @values = Array(1..81)
        @deck_pos = 12
        @max = 78

        while((@player1_score.to_i != 2) && (@player2_score.to_i != 2))

            @current_player = @players[@current_player_number.to_i]

            puts "#{@current_player}'s Selection: (ADD for new cards), (NEXT for next player)"
            response = gets.chomp

            if((response == "ADD") && (@deck_pos <= @max))

                @add_cards = Add.new(deck, @deck_pos)
                @add_cards.add
                @deck_pos = @deck_pos.to_i + 3


            elsif((response == "NEXT"))

                if (@current_player_number.to_i == 0)

                    @current_player_number = @current_player_number.to_i + 1
    
                elsif (@current_player_number.to_i == 1)
    
                    @current_player_number = @current_player_number.to_i - 1
    
                end

            else

                selections_array = response.split(" ")

                if(@values.include?((selections_array[0].to_i)) && @values.include?((selections_array[1].to_i)) && @values.include?((selections_array[2].to_i)))

                    selection_one = deck[(selections_array[0].to_i) - 1]
                    selection_two = deck[(selections_array[1].to_i) - 1]
                    selection_three = deck[(selections_array[2].to_i) - 1]
                    @set_guess = Set.new(selection_one, selection_two, selection_three)

                    if (@set_guess.decision == true)

                        if (@current_player_number.to_i == 0)

                            @player1_score = @player1_score.to_i + 1
            
                        elsif (@current_player_number.to_i == 1)
            
                            @player2_score = @player_score.to_i + 1
            
                        end
            
                        @do_replace = Replace.new(deck, ((selections_array[0].to_i) - 1), ((selections_array[1].to_i) - 1), ((selections_array[2].to_i) - 1), @deck_pos)
                        @do_replace.replace
                        @max = @max.to_i - 3
                    end
                else

                    puts "ERROR: enter valid numbers or ADD for more cards!"
                end
            end
        end
    end
end