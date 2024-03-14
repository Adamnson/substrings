# from https://www.theodinproject.com/lessons/ruby-sub-strings

# substrings function to receive 2 arguments : 
# 1) a string 
# 2) a dictionary ( array of words )
# the function should return an hash containing the words from the 
# dictionary that appear in the given string along with how many times
# the word was found

dict = ["below","down","go","going","horn","how","howdy","it","i",
                "low","own","part","partner","sit"]

def substrings(given_string, dictionary)
    occurances = Hash.new(0)
    given_string.split(' ').each() do |word|
        dictionary.each do |sub| 
            if word.include?(sub)
                occurances[sub] += 1
            end
        end
    end
    p occurances
end


substrings("below", dict)
substrings("Howdy partner, sit down! How's it going?", dict)


