#print 1-255
(1...255).to_a

#print odd between 1-255
(1...255).select(&:odd)

#print the sum of the numbers that have been printed so far
sum = 0
(0...255).each{|i| puts "New number: #{i} Sum: #{sum+=i}"}

# Iterating through an array
X =  [1,3,5,7,-5,9,13]
X.each{|i| puts i}

# Find Max
puts x.max

# Get Average
p X.reduce(:+)/X.size

# Array with Odd Numbers
y =*(1..255).step(2)

# Greater Than Y
array = [1,3,5,7]
y = 3
puts array.reject{|i| i> y}.count()

# Square the values
x =  [1, 5, 10, -2]
x.collect!{|i| i*i }
x.map!{|i| i*i}
p x

# Eliminate Negative Numbers
x = [1, 5, 10, -2]
x.map!{|i| if i<0 then 0 else i end}
x = x.each_index{|i| x[i] = 0 if x[i]<0 }
p x

# Max, Min, and Average
x = [1, 5, 10, -2]
mma = Hash["min" => x.min, "max" => x.max, "avg" => x.reduce(:+)/x.size]
p mma

# Shifting the Values in the Array
x = [1, 5, 10, 7, -2]
p x.rotate!

# Number to String
x = [-1,-3,2]
x.map!{|i| if i<0 then "dojo" else i end}
p x