class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    arr = []
    arr << [first_individual[0],second_individual[0]]
    arr << [first_individual[0],second_individual[1]]
    arr << [first_individual[1],second_individual[0]]
    arr << [first_individual[1], second_individual[1]]
  
    result = []
    aux = []

    arr.uniq.each do |item|
      aux << [item.sort.join('')]
    end
    
    aux.uniq.each do |item|
      result << [item.sort.join(''), aux.count(item)/aux.length.to_r]
    end
    
    result
    
  end
end