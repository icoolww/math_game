require './Player'
require './Question'
require './Game'


players = []
player1 = Player.new('1')
player2 = Player.new('2')
players.push player1
players.push player2

# p players
# p player1

#starting the game
game = Game.new(players)


while (!game.game_over?)
  puts "\n----- NEW TURN -----"

  #asking questions
  question = Question.new
  puts "#{game.turn.name} : #{question.question}"

  #checking answer
  answer = gets.chomp

  if question.checking?(answer)
    puts "#{game.turn.name} : YES! You are correct."
  else 
    puts "#{game.turn.name} : Seriously? No!"
    # minus 1 if answers incorrectly
    game.turn.lives -= 1
  end

  # switching players
  game.new_turn?

  # displaying latest scores
  game.current_score

end

puts "#{game.turn.name} wins with a score of #{game.turn.lives}/3"
puts "\n----- GAME OVER -----"
puts "Good bye!"
