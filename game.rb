$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'rps'

class Game
  def result(first_result, second_result)
    return :win if first_result and not second_result
    return :lose if not first_result and second_result
    return :tie
  end

  def round
    rps_round = RPS.new

    computers_hand = rps_round.possible_hands.sample
    puts "Your move:"
    
    players_hand = gets.chomp
    while not rps_round.possible_hands.include? players_hand
      puts "Check your input"
      players_hand = gets.chomp
    end

    puts "Computer says: \"#{computers_hand}\""

    puts result(rps_round.wins?(players_hand, computers_hand), 
                rps_round.wins?(computers_hand, players_hand))
  end
end

rps_game = Game.new
puts rps_game.round

