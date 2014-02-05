# Part 5: Anagrams

def combine_anagrams(words)
	anagrams = words.group_by { |word| word.chars.sort }.values
	return anagrams 
end

input = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
puts combine_anagrams(input)

# output: [ ["cars", "racs", "scar"],

#           ["four"],

#           ["for"],

#           ["potatoes"],

#           ["creams", "scream"] ]
