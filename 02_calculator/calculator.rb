#write your code here


def add(number1, number2)
	number1 + number2
end


def subtract(number1, number2)
	number1 - number2
end


def sum(numbers)
	total = 0
	numbers.each do |x| total += x
	 end	
	 return total
end

# BONUS

def multiply(numbers)
	total = 0
	numbers.each { |number| total *= numbers }
	return total
end

def power(number1, number2)
	number1 ** number2
end

def factorial(number_to_facto)
	return 0 if number_to_facto == 0
	total = 1
	(1..number_to_facto).select {|number| total *= number}
	return total
end

