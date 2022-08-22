require_relative "./player.rb"
require_relative "./question.rb"
class Game
  def run  #function that runs the game
    print "The game is started, "
    print "enter your name (Player1)"
    player1_name = gets.chomp.to_s # collect pl1 name
    print "enter your name (Player2)"
    player2_name = gets.chomp.to_s
    @player1 = Player.new(player1_name) # creating players with name inputs
    @player2 = Player.new(player2_name)
    until (@player1.dead? || @player2.dead?) do # until..do is lika a js while loop
      current_player = (current_player == @player1) ? @player2 : @player1 
      question = Question.new() # creates a new question with its 4 parameters
      puts "----- NEW TURN -----"
      puts "#{current_player.name}: #{question.display_question}"
      answer = gets.chomp.to_i
      if answer == question.answer
        puts "YES! You are correct."
        puts "#{@player1.name} #{@player1.lives}/3 lives and #{@player2.name} #{@player2.lives}/3"
      else current_player.lives -= 1
        puts "Seriously? No!"
        puts "#{@player1.name} #{@player1.lives}/3 lives and #{@player2.name} #{@player2.lives}/3"
      end
    end
    
    if @player1.dead?
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
    elsif     
      @player2.dead?
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
    end
    puts "----- GAME OVER -----"
    end
end