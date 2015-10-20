def echo(x)
	return x
end

def shout(x)
	return x.upcase
end

def repeat(x, y = 2)
	return ([x] * y).join(" ")
end

def start_of_word(word, number = 1)
	return word[0..number -1]
end

def first_word(phrase)
	list = phrase.split(' ')
	return list[0]
end

def titleize(phrase)
	exceptions = ['a', 'an', 'and', 'or', 'the', 'over']
	list = phrase.split(' ')
	list.each do |word|
		if exceptions.include?(word) && word == list[0] 
			word.capitalize!
		elsif exceptions.include?(word)
			word
		else
			word.capitalize!
		end
	end
	return list.join(' ')
end