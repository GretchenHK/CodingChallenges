
#make the hash before defining the collatz function, no other code will appear outside of collatz function
#inside collatz , hash will be involved in the loop

# I need to create a hash that will have "input" as the Key and the result of collatz(input) 
# as the corresponding value.
#Then, each time I go through the loop, I can store those keys and values into the hash.
#I can also reference the hash when I go through the loop - basically asking "Is this value in the hash
#alread}y?" If yes, take info from the hash to solve the problem.

@sequences = Hash.new 

def collatz(input)
    nd = input
    n = 1
    while nd != 1
        nd = next_digit(nd)
        if @sequences[nd]
            n = n + @sequences[nd]
            break
        end
        n = n + 1
    end
    @sequences[input] = n
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
1000000.times do |n|
    n = n + 1
    this_length = collatz(n)
    if this_length > max_length
        max_length = this_length
        number = n
    end
end

puts max_length 
puts number




