require './player'
require './questions'

class Game

  attr_reader :player_1, :player_2
  attr_accessor :current_player, :running_game

  def initialize 
    @player_1 = Player.new
    @player_2 = Player.new
    @current_player = @player_1
    @running_game = true
  end

  def player_alternator
    if @current_player == @player_1
      @current_player = @player_2
    elsif @current_player == @player_2
      @current_player = @player_1
    end
  end

  def player_name 
    if @current_player == @player_1
      print "Player 1"
    elsif @current_player == @player_2
      print "Player 2"
    end
  end

  def game_lost
    player_alternator
    puts "#{player_name} wins with a score of #{@current_player.lives}/3."
  end

  def new_round 
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    puts "----- NEW TURN -----"
  end

  def run 
    while @running_game do
      generate_question = Questions.new
      new_question = generate_question.question
      new_answer = generate_question.answer
    
      puts "#{player_name}: #{new_question}"
    
      player_answer = gets.chomp.to_i
    
      if new_answer == player_answer
        puts "Yes!"
        new_round
      else 
        puts "Wrong answer. 1 point lost"
        @current_player.life_loss
        if @current_player.lives == 0
          game_lost
          puts "----- GAME OVER -----"
          print "Goodbye!"
          @running_game = false
        else 
          new_round
        end
      end
      player_alternator
    end
  end
end

