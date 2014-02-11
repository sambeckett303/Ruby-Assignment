class Numeric
 @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
 def method_missing(method_id)
   singular_currency = method_id.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency) #Multiplies amount by the currency is it initially in
     self * @@currencies[singular_currency]
   else
     super
   end
 end

  def in(currency)
	singular_currency = to_singular(currency)
    if @@currencies.has_key?(singular_currency) #Divides initial currency amount by the currency conversion of the desired currency
      self / @@currencies[singular_currency]
    else
      super
    end
  end
 
  private
 
  def to_singular(word)
    word.to_s.gsub( /s$/, '')
  end
end

puts 1.dollar.in(:rupees) 
puts 10.rupees.in(:euro) #Will 10*0.019, then divide (10*0.019)/1.292
puts 25.yen.in(:rupees) 

# Reference:
# https://gist.github.com/tomtung/1973534
