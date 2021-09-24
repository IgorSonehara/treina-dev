class ElementSwap
  def switch(letters, instructions)
    j = 0
    for i in 1..letters.length
      pos1 = instructions[j].to_i
      pos2 = instructions[j+3].to_i
      letters[pos1], letters[pos2] = letters[pos2], letters[pos1]
      j += 5
    end
    letters
  end
end