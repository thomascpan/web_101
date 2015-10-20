# class Book
#   attr_reader :title

#   def title=(new_title)
#     words = new_title.split(" ")
#     words = [words[0].capitalize] +
#       words[1..-1].map do |word|
#         little_words = %w{a an and the in of}
#         if little_words.include? word
#           word
#         else
#           word.capitalize
#         end
#       end
#     @title = words.join(" ")
#   end

# end

class Book
	def titleA
		@title 
	end

	def title=(new_title)
		exceptions = %w{a an and the in of}
		words = new_title.split(' ')
		words = [words[0].capitalize] + words[1..-1].map do |x|
			if exceptions.include? x 
				x 
			else
				x.capitalize
			end
		end
		@title = words.join(' ')
	end
end

# book = Book.new 
# book.title = "inferno"
# puts book.titleA 