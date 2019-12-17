# Your Code Here
def map(source_array) 
  
  new_array = []
  index = 0
  
  while index < source_array.count do
   new_array << yield(source_array[index])
    index += 1
  end
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    sum = starting_point
    index = 0
  else
    sum = source_array[0]
    index = 1
  end
  while index < source_array.count do
   sum = yield(sum,source_array[index])
   index +=1
  end
  sum
end