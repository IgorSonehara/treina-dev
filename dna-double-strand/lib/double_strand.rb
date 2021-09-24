class DoubleStrand
  def complementary_strip(strip)
    second_strip = ""
    strip.split("").each do |char|
      if char.eql? "A"
        second_strip << "T"
      elsif char.eql? "T"
        second_strip << "A"
      elsif char.eql? "G"
        second_strip << "C"
      elsif char.eql? "C"
        second_strip << "G"  
      end
    end
    second_strip
  end
end
