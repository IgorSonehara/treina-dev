class FileParser
    def to_binary(decimal)
        decimal.to_s(2)
    end

    def to_binary_file(decimais)
        decimais = decimais.split(';') # array de decimais

        File.open("data/data.txt", "a") do |file|
            decimais.each { |num| 
                file.write("#{to_binary(num.to_i)}\n")
            }
        end
    end
end