class ArrayUtils
  def self.multiplos(qtd, multiplo)
    count = 0
    i = 1
    lista = []

    while (count < qtd)
      if i % multiplo == 0
        lista << i
        count = count + 1
      end
      i = i + 1
    end
    lista
  end

  def self.tabuada(num)
    tabuada = []
    for i in 1..num
        linha = []
        for j in 1..10
            linha << i * j
        end
        tabuada << linha
    end
    tabuada
  end
end