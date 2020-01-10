def map (data)
  i = 0
  new_data = []
  while i < data.length do
    new_data << yield(data[i])
    i += 1
  end
  new_data
end

def reduce (data, starting_point = nil)
  if starting_point
    new_data = starting_point
    i = 0
# I missed the else section from here...
  else
    new_data = data[0]
    i = 1
# ...to here. And the "if" conditional, of course.
  end
  while i < data.length do
    new_data = yield(new_data, data[i])
    i += 1
  end
  new_data
end
