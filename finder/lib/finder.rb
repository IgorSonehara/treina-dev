class Finder
  def index_of(list, value)
    found = []
    list.each_with_index do |var, index|
      if var.include? "#{value}"
        found << index
      end
    end
    found
  end
end