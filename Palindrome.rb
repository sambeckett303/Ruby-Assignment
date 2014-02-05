# Part 2: Palindrome
class Palindrome
	def palindrome?(string)
		copy = string.downcase.gsub(/(\W|\d)/, "")
		copy == copy.reverse
	end
end
test = Palindrome.new
puts test.palindrome?("A man, a plan, a canal -- Panama") # true
puts test.palindrome?("Madam, I'm Adam!") # true
puts test.palindrome?("Abracadabra") # false
