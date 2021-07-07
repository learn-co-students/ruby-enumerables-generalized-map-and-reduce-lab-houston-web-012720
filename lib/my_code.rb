# Your Code Here
def map(array)
  modified_array = [] # [1, 2, 3, -9]
  
  for element in array do
    modified_array << yield(element)
  end
  
  return modified_array
end

# p map([1, 2, 3, -9]){|n| n * -1}

def reduce(array, starting_value = nil)
  accumulator = array[0]
  i = 1
    
  if starting_value
    accumulator = starting_value
    i = 0
  end
  
  while i < array.length do
    element = array[i]
    accumulator = yield(accumulator, element)
    i += 1
  end
  
  return accumulator
end

source_array = [1,2,3]
reduce(source_array){|memo, n| p memo + n} #=> 6

# starting_point = 100

  # it "returns true when a truthy value is present" do
# source_array = [ false, nil, nil, nil, true]
# reduce(source_array){|memo, n| p (memo || n)}
  # end