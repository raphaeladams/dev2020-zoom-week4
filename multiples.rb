# Multiples
# Raphael Adams

def customized_list_of_multiples(multiples_of, size)

  list_of_multiples = Array.new(size)
  list_of_multiples.each_index { |i| list_of_multiples[i] = multiples_of * i }

  if block_given? 
    yield(list_of_multiples)
  else
    puts "no block"
    list_of_multiples
  end

end

list_test1 = customized_list_of_multiples(2, 5)
print list_test1
print "\n"

