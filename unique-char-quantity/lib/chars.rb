class Chars
  def unique_quantity(text)
    soma = 0
    text.split.each do |str|
      soma = soma + str.split(//).uniq.length
    end
    soma
  end
end