class RnaSplicer
  def splice(rna, introns)
    introns.each do |intron|
      rna.gsub!(intron, "")
    end
    rna
  end
end