class String
  def palindrome?
    # Calls palindrome?(s) defined in Homework 1
    Object.send(:palindrome?, self)
  end
end
 
 
 module Enumerable
  def palindrome?
    self.collect{|x| x} == self.collect{|x| x}.reverse
  end
end


 def palindrome?(string)
	if string.downcase.gsub(/\W/, '') == string.downcase.gsub(/\W/, '').reverse 
		return true
    else
        return false
	end  
end

puts "A man, a plan, a canal -- Panama".palindrome?  # true
puts "Madam, I'm Adam!".palindrome?              # true
puts "Abracadabra".palindrome?                      # false 
puts "Sammmmmy".palindrome? # false
puts [1,2,3,2,1].palindrome? # true
