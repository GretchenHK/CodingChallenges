#This program will calculate the next number in the collatz sequence. 

#I need a program that will calculate the longest collatz sequence.
#I have tried to get this to loop by writing "while n>1" on line 7, but that doesn't seem to work.
#once I get this to loop till it reaches 1, then next step is to get the program to count the length of the sequence
#and return the "n" that generated the longest sequence.  I think this involves an array, but I have yet to figure out
#how to run a method and have the result of the method be added to an array.  As far as counting the number of items in 
#an array, I believe that can be done with "number_of_items = sequence.length ..... 


def collatz(n)
    
        if n <= 1
            return n
        end
        
        if n % 2 == 0 
            n = n / 2
            return n
        else
            n = 3 * n + 1
            puts n
        end
end

puts collatz(1000)

