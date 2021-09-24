class Arrays
  def self.converte_impares_por(lista, numero)
    impares = []
    multiplos = []
    novaLista = []

    lista.each do |item|
      if item % 2 != 0
        impares << item
      end
    end

    impares.each do |num|
      multiplos << numero * num
    end

    novaLista << impares
    novaLista << multiplos
    novaLista
  end

  def self.converte_pares_por(lista, numero)
    pares = []
    multiplos = []
    novaLista = []

    lista.each do |item|
      if item % 2 == 0
        pares << item
      end
    end

    pares.each do |num|
      multiplos << numero * num
    end

    novaLista << pares
    novaLista << multiplos
    novaLista
  end
end