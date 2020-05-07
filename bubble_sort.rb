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

print bubble_sort(['z','e','f','a'])
