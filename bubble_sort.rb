def bubble_sort(array=[4,2,1,7])
  for i in (0 ... array.size)
      for k in (0 ... array.size)
          if k+1 != array.size && array[k] > array[k+1] 
              aux = array[k+1] #2 -->aux
              array[k+1]= array[k] #1--> array[k+1]
              array[k]=aux #2 --> array[k]
          end
      end
  end
  return array        
  end
  
  # print bubble_sort(['z','e','f','a'])
  
  def bubble_sort_by(array=[4,2,1,7])
    for g in (0 ... array.size)
      for l in (0 ... array.size)
        if l+1 != array.size
          value=yield(array[l],array[l+1])
      if value > 0
        aux = array[l+1] #2 -->aux
        array[l+1]= array[l] #1--> array[k+1]
        array[l]=aux #2 --> array[k]
      end
          end
        end
      end
      return array
    end
  print bubble_sort_by([9,2,6,4]) {
    | left,right |
     left-right
  }

