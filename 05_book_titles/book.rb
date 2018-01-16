
# write your code here
class Book
	attr_accessor :title #attribution of instance

	def title=(new_title)
		@title = titleize(new_title)
	end

 #return the fonction word character in up case wiht word character and add one and join all strings ( capitalize the first letter)
	def titleize_firstletter(word)
		return word.chars[0].upcase + word.chars[1..word.size].join 
	end

	def titleize(welcome)
		little_words = ["the", "and", "in", "of", "a", "an"]
		final_word = ""
#fonction welcome split and take one element one by one inside loop
		welcome.split(" ").each do |word|
			if final_word.size == 0 || !little_words.include?(word)
				final_word += titleize_firstletter(word) + " "
			else
				final_word += word + " "
			end
		end
		return final_word.rstrip #Returns a copy of str with trailing whitespace removed
	end


end
