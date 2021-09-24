class Numbers
  def sum_text(numbers_text)
    sum = 0
    temp = ""
    numbers_text.each_char do |char|
      if char != "\n"
        temp << char
      else
        sum += temp.to_i
        temp = ""
      end
    end
    sum
  end
end