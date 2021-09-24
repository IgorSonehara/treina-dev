class Ribosome
  def translate(rna_messenger)
    rna = ""
    rna_messenger.split("").each do |char|
      if char.eql? "C"
        rna << "G"
      elsif char.eql? "G"
      rna << "C"
      elsif char.eql? "A"
        rna << "U"
      elsif char.eql? "G"
        rna << "C"  
      elsif char.eql? "U"
        rna << "A"
      elsif char.eql? "G"
      end
    end
    
    rna = rna.chars.each_slice(3).map(&:join)
    
    seq_aminoácido = ""
    rna.each do |rnat|
      if rnat == "UCA"
        seq_aminoácido << 'aa1-'
      elsif rnat == "AAC"
        seq_aminoácido << 'aa2-'
      elsif rnat == "UUU"
        seq_aminoácido << 'aa3-'
      elsif rnat == "AAA"
        seq_aminoácido << 'aa4-'
      elsif rnat == "AUC"
        seq_aminoácido << 'aa5-'
      elsif rnat == "CCA"
        seq_aminoácido << 'aa6-'
      elsif rnat == "GGU"
        seq_aminoácido << 'aa7-'
      elsif rnat == "GCC"
        seq_aminoácido << 'aa8-'
      else 
        return "Translation aborted"     
      end
    end
    
    seq_aminoácido.chomp('-')
  end
end
