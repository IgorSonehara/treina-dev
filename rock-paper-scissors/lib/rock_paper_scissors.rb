class RockPaperScissors
  def play(actions)
    arr = []

    actions.each_line do |line|
      arr << line.split(" ")
    end
    
    score_jogador_a = 0
    score_jogador_b = 0
    empates = 0
    
    arr.each do |play|
      if play[0] == "pedra"
        if play[2] == "tesoura"
          score_jogador_a += 1
        elsif play[2] == "papel"
          score_jogador_b += 1
        else
          empates += 1
        end
      elsif play[0] == "papel"
        if play[2] == "pedra"
          score_jogador_a += 1
        elsif play[2] == "tesoura"
          score_jogador_b += 1
        else
          empates += 1
        end
      elsif play[0] == "tesoura"
        if play[2] == "pedra"
          score_jogador_b += 1
        elsif play[2] == "papel"
          score_jogador_a += 1
        else
          empates += 1
        end
      end
    end
    
    if score_jogador_a == 0
      "Jogador B: #{score_jogador_b}"
    elsif score_jogador_b == 0
      "Jogador A: #{score_jogador_a}"
    elsif empates == 0
      "Jogador A: #{score_jogador_a} | Jogador B: #{score_jogador_b}"
    else
      "Empates: #{empates} | Jogador A: #{score_jogador_a} | Jogador B: #{score_jogador_b}"
    end
  end
end
