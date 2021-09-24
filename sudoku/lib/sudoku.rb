class Sudoku
  def check(list)
    if list.length != 9
      return false
    end
    i = 1
    list.sort.each do |num|
      if num != i
        return false
      end
      i += 1
    end
    true
  end
end