
def collatz(input)
    chain = []
    chain << input
    nd = next_digit(input)
    while nd != 1
    chain << nd
    nd = next_digit(nd)
end
    chain << nd
    return chain.count
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


collatz = []
1000.times do |n|
    n = n + 1
    collatz << collatz(n)
end
max_collatz = collatz.max
puts collatz.index(max_collatz) + 1





##collatz = []
#1000.times do |n|
#    n = n + 1
#    collatz << collatz(n)
#end
#max = 0

#if collatz(n) > max 


#7.times do |n|
#    n = n + 1
 #   puts collatz(n)
#end

