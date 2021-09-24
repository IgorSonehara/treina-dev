class MisteryNumber
  def calculate(operation)
    operation = operation.gsub("=", "==")
    i = 0
    loop do
      temp = eval operation.gsub("?", "#{i}")
      if temp == true
        return i
      end
      i = i + 1
    end
  end
end