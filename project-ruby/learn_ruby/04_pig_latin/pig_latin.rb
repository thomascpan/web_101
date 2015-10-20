def translate(phrase)
	#vowel
	vowel = ['a', 'e', 'i', 'o', 'u']
	consonant = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
	vowel += vowel.map {|x| x.upcase}
	consonant += consonant.map {|x| x.upcase} #adds uppercase letters to consonant array. 
	list = phrase.split(' ')
	list.map! do |word|
		if vowel.include?(word[0])
			if word[0] == word[0].upcase
				word+='ay'
				word.capitalize
			else
				word+='ay'
			end
		else
			if consonant.include?(word[0]) && vowel.include?(word[1])
				if word[0..1] == "qu"
					if word[0] == word[0].upcase
						word+=word.downcase[0..1]
						word[0..1]=''
						word+='ay'
						word.capitalize
					else 
						word+=word.downcase[0..1]
						word[0..1]=''
						word+='ay'
					end
				else
					if word[0] == word[0].upcase
						word+=word.downcase[0]
						word[0]=''
						word+='ay'
						word.capitalize
					else
						word+=word.downcase[0]
						word[0]=''
						word+='ay'
					end
				end
			elsif consonant.include?(word[0]) && consonant.include?(word[1])
				if consonant.include?(word[0]) && word[1..2] == "qu"
					if word[0] == word[0].upcase
						word+=word.downcase[0..2]
						word[0..2]=''
						word+='ay'
						word.capitalize
					else
						word+=word.downcase[0..2]
						word[0..2]=''
						word+='ay'
					end
				elsif consonant.include?(word[2])
					if word[0] == word[0].upcase
						word+=word.downcase[0..2]
						word[0..2]=''
						word+='ay'
						word.capitalize
					else
						word+=word.downcase[0..2]
						word[0..2]=''
						word+='ay'
					end
				else 
					if word[0] == word[0].upcase
						word+=word.downcase[0..1]
						word[0..1]=''
						word+='ay'
						word.capitalize
					else
						word+=word.downcase[0..1]
						word[0..1]=''
						word+='ay'
					end
				end
			end
		end
	end
	return list.join(' ')
end
