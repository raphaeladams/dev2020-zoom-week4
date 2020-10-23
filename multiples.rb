# Multiples
# Raphael Adams

def customized_list_of_multiples(multiples_of, size)

  list_of_multiples = Array.new(size)
  list_of_multiples.map! { |i| multiples_of * list_of_multiples.index(i) }

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

list_test2 = customized_list_of_multiples(2, 5) do |list|
  puts "first block"
  list.map! { |i| i.to_s + " converted to String"}
end
print list_test2
print "\n"

list_test3 = customized_list_of_multiples(2, 5) do |list|
  puts "second block"
  list.map! { |i| i * 1000 }
end
print list_test3
print "\n"