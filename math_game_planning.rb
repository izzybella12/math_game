=begin

Players -> 2 instances of players, each player has 3 lives
Questions -> generated randomly by picking 2 numbers between 1-20
Game -> initializing the game

Stretch: 
Answers -> The answers generated for right and wrong selections

Class plays an important roles as it helps modulize particular sections
of the project. 

The players class will keep track of the players and alternate between 
them to simulate turns. The players class will also keep track of how many
lives each player has. When a player has lost all their lives, this class 
will be responsible for ending the game.
The player class will need a name in order to initialize
Players state: 2 individual players, the player's lives
Players behavior: ending the game when a player has lost all their lives
Public methods: decreasing lives, displaying lives once decreased

The questions class will be responsible for randomly selecting 2 numbers
betwen 1-20.
Questions state: 20 questions 
Questions behavior: randomly selecting a question, verifying the answer
Public methods: randomization of question selecting

The game class will contain the game loop.
It should also manage who the current_player is.
Contains I/O

Stretch: 
The answers class will be responsible for the answers players recieve when 
they have inputted an anser
The answers class will need 2 players in order to initialize
Answers state: several generated answers based on yes or no
Answers behavior: randomnly selecting an answer depending on right or wrong
Public methods: randomization of answers selecting

=end
