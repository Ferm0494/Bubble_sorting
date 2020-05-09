def bubble_sort(array = [4, 2, 1, 7])
  (0...array.size).each do |_i|
    (0...array.size).each do |k|
      next unless k + 1 != array.size && array[k] > array[k + 1]

      aux = array[k + 1]
      array[k + 1] = array[k]
      array[k] = aux
    end
  end
  array
end

def bubble_sort_by(array = [4, 2, 1, 7])
  (0...array.size).each do |_g|
    (0...array.size).each do |l|
      next unless l + 1 != array.size

      value = yield(array[l], array[l + 1])
      next unless value.positive?

      aux = array[l + 1]
      array[l + 1] = array[l]
      array[l] = aux
    end
  end
  array
end
