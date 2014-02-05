# Part 6: glob match

def glob_match(filenames, pattern)
	pattern.gsub!(/[\*\?\.]/, '*' => ' .*', '.' => '\.', '?' => '.')
	expr = Regexp.new(pattern)
	filenames.select do |filename|
		filename =~ expr
	return filenames
	end
end

filenames = ['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~']
ary = glob_match(filenames,"*part*rb?*")
puts ary
