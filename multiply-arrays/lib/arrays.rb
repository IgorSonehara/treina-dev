class Arrays
  def self.multiplica_antecessor_predecessor(array)
    newArray = []
    
    array.each_with_index do |item, index|
      if index == 0
        newArray << array[index] * array[index+1]
      elsif index == array.length()-1
        newArray << array[index] * array[index-1]
      else
        newArray << array[index-1] * array[index+1]
      end
    end
    newArray
  end
end