def guess_number guess
    number = 25
    # your code here
    puts "u got it" unless guess != number
    puts "too high" unless guess > number
    puts "too low" unless guess < number
end 

print guess_number guess=5
print guess_number guess=10
print guess_number guess=100
print guess_number guess=26
print guess_number guess=25