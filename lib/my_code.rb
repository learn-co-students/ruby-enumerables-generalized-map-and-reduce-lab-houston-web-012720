
def map(array)
  new_array = []
  i = 0
  while i < array.length
    new_array.push(yield(array[i]))
    i +=1
  end
  new_array
end

map([1, 2, 3, -9]) { |n| n * -1 }

def reduce(array, nv = nil)
  if nv
    sum = nv
    i = 0
  else
    sum = array[0]
    i = 1
  end
  
  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end