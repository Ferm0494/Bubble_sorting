def bubble_sort(array = [4, 2, 1, 7])
  (0...array.size).each do |_i|
    (0...array.size).each do |k|
      next unless k + 1 != array.size && array[k] > array[k + 1]

      aux = array[k + 1] # 2 -->aux
      array[k + 1] = array[k] # 1--> array[k+1]
      array[k] = aux # 2 --> array[k]
    end
  end
  array
end

# print bubble_sort(['z','e','f','a'])

def bubble_sort_by(array = [4, 2, 1, 7])
  (0...array.size).each do |_g|
    (0...array.size).each do |l|
      next unless l + 1 != array.size

      value = yield(array[l], array[l + 1])
      next unless value.positive?

      aux = array[l + 1] # 2 -->aux
      array[l + 1] = array[l] # 1--> array[k+1]
      array[l] = aux # 2 --> array[k]
    end
  end
  array
end

x = bubble_sort_by(%w[hey hello worodds]) do |left, right|
  left.length - right.length
end

print x
