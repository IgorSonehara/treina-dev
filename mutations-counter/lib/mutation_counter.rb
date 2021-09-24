class MutationCounter
  def calculate(dna_collection)
    count = 0
    biggest = 0
    
    dna_collection.each do |pair|
      pair[0].split("").each_with_index do |item, index|
            if item != pair[1][index]
              count += 1
            end
      end
        if count > biggest
          biggest = count
          count = 0
        end
    end
    biggest
  end
end