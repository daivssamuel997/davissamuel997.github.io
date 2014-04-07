def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
    decoded_sentence = []
    cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
        "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
        "g" => "c",
        "h" => "d",
        "i" => "e",
        "j" => "f",
        "k" => "g",
        "l" => "h",
        "m" => "i",
        "n" => "j",
        "o" => "k",
        "p" => "l",
        "q" => "m",
        "r" => "n",
        "s" => "o",
        "t" => "p",
        "u" => "q",
        "v" => "r",
        "w" => "s",
        "x" => "t",
        "y" => "u",
        "z" => "v",
        "a" => "w",
        "b" => "x",
        "c" => "y",
        "d" => "z"}
    
    input.each do |x| # What is #each doing here?
        found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
        cipher.each_key do |y| # What is #each_key doing here?
            if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
                puts "I am comparing x and y. X is #{x} and Y is #{y}."
                decoded_sentence << cipher[y]
                found_match = true
                break  # Why is it breaking here?
                elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
                decoded_sentence << " "
                found_match = true
                break
                elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
                decoded_sentence << x
                found_match = true
                break
            end
        end
        if not found_match  # What is this looking for?
            decoded_sentence << x
        end
    end
    decoded_sentence = decoded_sentence.join("")
    
    if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
    end
    return decoded_sentence # What is this returning?
end

#Samuel Davis
#Jake Persing

def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
    decoded_sentence = []
    
    # defined an array "letters" from a to z
    letters = ("a".."z").to_a
    
    # defined a new array "rotated" that is a rotated version of letters
    rotated = letters.rotate(4)
    
    # declared an empty hash "cipher"
    cipher = {}
    
    # iterated through the array by the index and reassigned each hash key
    # to its corresponding shifted letter
    rotated.each_with_index {|v, i| cipher[v] = letters[i]}
    
    # If we changed it to 10 rotated letters, then it would be shifted 6 more letters to the right
    # rotated = letter.rotate(10)
    # the rest of the code would be the same
    
    p cipher
    
    # What is #each doing here? Each is iterating through each value
    # in the input so that it can compare it to each value in the cipher hash.
    input.each do |x|
        #found_match = false  # Why would this be assigned to false from the outset? Severs as a check so we know if we found
        # any matches in the if and elsif checks. What happens when it's true? We found a match!
        cipher.each_key do |y| # What is #each_key doing here? Iterating through each key in the hash "cipher".
            
            if x == y  # What is this comparing? It is comparing the input to the key in the cipher.
                #Where is it getting x? It gets x from input.each, x is the corresponding character
                #in input. Where is it getting y? y is from cipher.each_key, and represents the key element from the cipher hash. What are those variables really? Those variables are placeholders for characters to compare.
                puts "I am comparing x and y. X is #{x} and Y is #{y}."
                decoded_sentence << cipher[y]
                #found_match = true
                #break  # Why is it breaking here?
                elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This is comparing the input value to a variety of symbols, if x contains one of these symbols, push a space character into the decoded sentence.
                decoded_sentence << " "
                # found_match = true
                #break
                elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? This creates an array containing 10 numbers 0-9
                decoded_sentence<< x
                #found_match = true
                #break
                else
                decoded_sentence << x
            end
        end
        
    end
    decoded_sentence = decoded_sentence.join("")
    
    if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.
        # this is a regular expression that looks for a match of an number of any length, and divides by 100
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
    end  
    return decoded_sentence # What is this returning? It would be returning a string, due to the .join.     
end