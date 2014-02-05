class Class
  
  def attr_accessor_with_history(attr_name) 
    attr_name = attr_name.to_s         # make sure it's a string
    attr_reader attr_name              # create the attribute's getter
    attr_reader attr_name + "_history" #create history getter
    class_eval %{
      def #{attr_name}=(val)
        @#{attr_name} = val
        @#{attr_name}_history = [nil] if @#{attr_name}_history.nil?
        @#{attr_name}_history.push(val)
      end
    }
  end
  
end

class Foo
  
  attr_accessor_with_history :bar
 
end 
 
puts f = Foo.new   

puts f.bar = 3       # 3

puts f.bar = :wowzo  # :wowzo

puts f.bar = 'boo!'  # 'boo!'

puts f.bar_history   # [nil, 3, :wowzo, 'boo!']


f = Foo.new

f.bar = 1

f.bar = 2

puts f.bar_history # should be [nil, 1, 2]

# Resource:
# https://gist.github.com/andrewdavidcostello/1996238
