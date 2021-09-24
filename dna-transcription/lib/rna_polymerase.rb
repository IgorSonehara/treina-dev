class RnaPolymerase
  def transcribe(dna, beginning, ending)
    if dna.include?(beginning) and dna.include?(ending) and beginning != "" and ending != ""
      dna = dna[/#{beginning}(.*?)#{ending}/m, 1]
      rna = ""
      dna.split("").each do |char|
        if char.eql? "C"
          rna << "G"
        elsif char.eql? "T"
          rna << "A"
        elsif char.eql? "A"
          rna << "U"
        elsif char.eql? "G"
          rna << "C"  
        end
      end
      rna
    else
      return "Sequence not found"
    end  
  end
end