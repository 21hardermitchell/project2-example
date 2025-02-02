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

        puts "The game will begin in 5 seconds!...#{@player1} will go first!\n\n"
        sleep 5

        #Setting initial player scores and player position.
        @current_player_number = 0
        @player1_score = 0
        @player2_score = 0

        #Creating a deck of 81 cards, shuffling them, and outputting them.
        deck = []
        @deck_creator = Deck.new(deck)
        @deck_creator.shuffle
        @deck_creator.output_deck

        #Variables used to bound input, keep the deck position, and bound the max cards on the terminal.
        @values = Array(1..81)
        @deck_pos = 12
        @max = 78

        #This loop iterates through the inputs of the user until a player has enough points to win.
        while((@player1_score.to_i != 5) && (@player2_score.to_i != 5))

            @current_player = @players[@current_player_number.to_i]

            puts "#{@current_player}'s Selection: (ADD for 3 more cards), (NEXT for next player)"
            response = gets.chomp

            #This if-elsif-else block handles the 3 types of valid inputs.
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

                #This if-else block handles the non ADD/NEXT input from the user. 
                if(@values.include?((selections_array[0].to_i)) && @values.include?((selections_array[1].to_i)) && @values.include?((selections_array[2].to_i)))

                    #If the selections are valid input, the program splits the numbers and sends them to the SET class.
                    selection_one = deck[(selections_array[0].to_i) - 1]
                    selection_two = deck[(selections_array[1].to_i) - 1]
                    selection_three = deck[(selections_array[2].to_i) - 1]
                    @set_guess = Set.new(selection_one, selection_two, selection_three)

                    #If a SET was found, the player recieves a point and the cards get replaced.
                    if (@set_guess.decision == true)

                        if (@current_player_number.to_i == 0)

                            @player1_score = @player1_score.to_i + 1
            
                        elsif (@current_player_number.to_i == 1)
            
                            @player2_score = @player2_score.to_i + 1
            
                        end
            
                        @do_replace = Replace.new(deck, ((selections_array[0].to_i) - 1), ((selections_array[1].to_i) - 1), ((selections_array[2].to_i) - 1), @deck_pos)
                        @do_replace.replace
                        @max = @max.to_i - 3

                        puts "You found a SET! #{@current_player} gained a point!"
                        puts "The cards in the SET have now been replaced!\n\n"

                    else

                        puts "Not a SET! Try again!"

                    end
                
                else
                    
                    puts "ERROR: enter valid numbers or ADD/NEXT"

                end
            end
        end

        puts "#{@current_player} won! Congratulations!"

    end
end