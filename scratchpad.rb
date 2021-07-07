a = [1, 2, 3, 4, 5]

a.length.times { |i|
  puts i
}



def say_message(message)
  yield(message)
end

say_message("hi") { |i|
  puts "'#{i}' is the message."
}


def count_to_num(num)
  yield("The number is #{num}.")
end

count_to_num(5) { |statement|
  puts statement
}
