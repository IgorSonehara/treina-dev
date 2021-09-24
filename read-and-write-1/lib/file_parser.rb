class FileParser

    def to_integer(binario)
        binario.to_i(2)
    end

    def convert(arquivo)
        soma = 0
        File.foreach(arquivo) { |line| 
            soma += to_integer(line) 
        }
        soma
    end
end
