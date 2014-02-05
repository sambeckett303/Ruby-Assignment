# Part 3: word count

def count_words(string)
	hash = {}
	string.downcase.gsub(/[^a-z\s]/, "").split().each {
	|word| hash[word] = hash[word] ? hash[word]+1 : 1
	}
	return hash
end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Doo bee doo bee doo")
