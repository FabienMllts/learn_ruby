#write your code here
#Echo

def echo(hello)
	hello
end

#Shout

def shout(hello)
	hello.upcase
end

#Multiples words

def shout_multiple_words(str)
	words = str.upcase.split(' ')
end

#Repeat

def repeat(hello, times = 2)
	 ((hello + " ") * times).rstrip
end

#Start of word

def start_of_word(hello, number)
	hello[0..number-1]
end

#First word

def first_word(hello)
	hello.split(" ")[0]
end

#Capitalize a word

def titleize(word)
	word.capitalize
end

#doesn't capitalize 'little words' in a title
 #does capitalize 'little words' at the start of a title


def titleize(welcome)
	
	little_words = ["the", "and", "over"]
	final_word = welcome.split(" ")

	final_word.each do |word|
		word.capitalize! if !little_words.include?(word)
	end

	final_word[0].capitalize!

	return final_word.join(" ")

end