#write your code here
def translate(phrase)
    words = phrase.split() # Split sentence into array of words
    words.each do |word|
        if word.start_with?('a','e','i','o','u') # function start_with is a cheat!!!
            word << "ay"
        else
            while not word.start_with?('a','e','i','o','u')
                if word.start_with?('qu') # Special case for qu combo
                    word.insert(-1, 'qu') # put qu at the end of the word
                    word[0..1] = ''    # two first letter become ''   
                else
                    word.insert(-1, word[0]) # Moves first letter to end of word
                    word[0] = '' # Deletes first letter
                end
            end

            word << "ay" # Add "ay" at the end of word
            
        end
    end
    words.join(" ")
end