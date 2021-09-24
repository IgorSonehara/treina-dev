class StringUtils
  def wavefy(string)
    string.each_char.with_index do |char, i|
      if i % 2 == 0
        string[i] = string[i].downcase
      else
        string[i] = string[i].upcase
      end
    end
  end
end