require './Game.rb'
require './Player.rb'
require './Question.rb'
require './Turn.rb'

class Game
  p1 = Player.new('player1')
  p2 = Player.new('Player2')
  puts 
  puts "Welcome to TwO-O-Player Math Game!!"
  puts 
  player1_turn = Turn.new(p1)
  player2_turn = Turn.new(p2)
  is_player_1_turn = true


  while p1.lives > 0 && p2.lives > 0
    if (is_player_1_turn)
      player1_turn.start
      is_player_1_turn =false 
    else 
      player2_turn.start
      is_player_1_turn = true 
    end
    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
    puts
  end
  puts "----GAME OVER----"
  puts "Good bye!"
end