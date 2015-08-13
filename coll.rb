
def collatz(input)
    nd = input
    n = 1
    while nd != 1
        n = n + 1
        nd = next_digit(nd)
    end
    return n
end

def next_digit(input)
    if input < 1
        return input
    end
        
    if input % 2 == 0 
        nd = input / 2
        return nd
    else
        nd = 3 * input + 1
    end
end


number = 0
max_length = 0
1000.times do |n|
    n = n + 1
    this_length = collatz(n)
    if this_length > max_length
        max_length = this_length
        number = n
    end
end

puts max_length 
puts number



