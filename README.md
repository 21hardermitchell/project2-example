CSE3901
Mitchell Harder

This program creates a text-based Game of Set between 2 present players.

When the program begins, the players will each be prompted to enter their names. After which, the player who goes first will be decided and there will be 5 seconds until the game officially begins.

Game Description:

    After the 5 seconds is up, 12 "cards" will be printed out on the terminal.

    They will appear as follows [1-12]:

        [1]: 
        Three Green Squiggle's that are Striped
    
    This is a "card", it has 4 attributes and it is displayed in sentence form. The 4 attribute groups are:

        Number: [One, Two, Three]

        Color: [Green, Purple, Red]

        Shape: [Oval, Squiggle, Diamond]

        Fill: [Empty, Striped, Full]

    Taking all this into account, there are 81 possible combinations in the deck.

    A SET is a group of 3 cards in which every attribute type amongst the 3 cards is all the same or all different.

    For example:

        [1]: 
        Three Green Squiggle's that are Striped

        [2]: 
        Three Green Squiggle's that are Empty

        [3]: 
        Three Green Squiggle's that are Full

    This is a SET! (Number: Same, Color: Same, Shape: Same, Fill: All Different)

    A player makes a selection by typing the 3 numbers that correspond to each card. For example, a player would type 1 2 3 into the terminal if they chose the above set of cards.

    The program then takes the selection and decides if the player has found a SET.

        If a SET was found, the cards in the SET are replaced with new ones and the player who made the selection will recieve a point! The program will prompt the user for another selection.

        If a SET was not found, the program will inform the player of the result and prompt for another selection.

    ADD:

     If a player decides that a SET cannot be found with the cards on the terminal, they can type: ADD and the program will deal 3 more cards. This means 15 cards will be on the terminal.

        *Warning* The program starts with a card limit of 81; however, when a SET is found cards are replaced and this brings down the number of cards that can be displayed on the terminal. If you try to ADD more cards than there are available, an error message will be printed.

            Example: If a SET is found, 78 cards is the new max.

    NEXT:

        A player can end their turn by typing NEXT into the terminal.

        This program does not implement a timer, so it is up to the user to keep track of time and decide when to switch player turns.

    How to win the game:

        A player wins the game when they have succesfully found 5 SET's!

        Once a player reaches 5 points, the program will congratulate the winner.


