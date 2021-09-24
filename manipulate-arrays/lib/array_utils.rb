class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(n1, n2)
    arr1 = []
    arr2 = []
    arr3 = []
    newArray = []
    
    for i in 1..50
      if i % n1 == 0 && i % n2 == 0
        arr1 << i
      else
        if i % n1 == 0
          arr2 << i
        elsif i % n2 == 0
          arr3 << i
        end
      end
    end
    newArray << arr1
    newArray << arr2
    newArray << arr3
    newArray
  end

  def self.soma(array)
    soma = 0
    array.each do |num|
      soma = soma + num
    end
    soma
  end

  def self.combinar(array1, array2)
    array = []

    array1.each do |item1|
      array2.each do |item2|
        array << [item1, item2]
      end
    end
    array
  end
end