require './Question.rb'
require './Player.rb'

class Turn
  def initialize (player)
    @player = player
  end

  def new
    puts "----NEW TURN----"
    print "#{@player.name}: "
    question = Question.new 
    puts question.question 
    print ">"
    player_answer = gets.chomp.to_i

    if(player_answer == question.answer)
      puts "Good job pal, you are correct!"
    else 
      puts "Seriously? No."
    end
  end
end
