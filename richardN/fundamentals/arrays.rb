a = [1,3,5,7,9,2,4,6,8,0]
b = ["dog", "cat", "tea", "coffee", "dallas", "apple", "Houston"]

puts a.at 3
puts b.fetch 6

puts a.delete 2
puts b.delete "dallas"

puts a.reverse
puts b.reverse 

puts a.length
puts b.sort.to_s

puts a.slice 6 #not sure...
puts b.shuffle

puts a.join "-Test-"
puts b.insert(0,"Richard")

puts a.values_at(2)
b = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"