RPS_WINS = {'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock'}

class RPS
  def wins?(hand_object, hand_argument)
    return RPS_WINS[hand_object] == hand_argument
  end

  def possible_hands
    return RPS_WINS.keys
  end
end
