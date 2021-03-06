# U1.W3: Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# we need a function that takes in an array
# for the second function, I need to bring in an array.
# What is the output? (i.e. What should the code return?)
# the code should return the sum of the array. Also, it should return a sentence with a capital letter for the first
# letter and end with a period.
# What are the steps needed to solve the problem?
# For the first function, I need to bring an the array. I will use a while loop and iterate thorugh the array
# by figuring out the length of the array by using .length on the paramenter. I will inicialize sum to 0 and add sum
# to array[i] together to get the sum. Then return it.

# For the second function, I need to bring in the array and  I will iterate through it again just like the first
# funciton. I will use .Upcase to make the first spot capital and end it with a period.

# 2. Initial Solution
def total(array)
    
    len = array.length
    i = 0
    sum = 0
        
    while i < len do
        sum = sum + array[i]
        i = i + 1
    end
    return sum
end
        
def sentence_maker(array)
        
    len = array.length
    i = 0
    string = nil
            
    while i < len do
        if i == 0
            string = array[i].capitalize
            i = i + 1
                        
        else
            string = string.to_s + " " + array[i].to_s
            i = i + 1
        end
    end
    
    string = string + "."
                    
    return string
end
                
              
                
                
                
                # 3. Refactored Solution
                # I did not change any of the code because I felt like it was already organized and clear with the
                # variable names. This was a fun exercise for me and I can't wait to do more. 
                
                
                
                # 4. Reflection 
                # I had a clear idea of how I wanted to go through with tackling this assignment and it all turned out fine I believe. 
                # I am feeling a little more comfortable with the code and know that I need to do a lot more practice. I didn't really 
                # face any problems with this code and I am ready to do another one! I am sure that there was a method in which I 
                # could have done this code in a lot less lines, but this was not clear yet to me. With more experience I am sure
            # that I will figure it out.