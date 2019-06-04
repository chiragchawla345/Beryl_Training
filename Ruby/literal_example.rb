# Literals
a = ?c
puts "#{a} #{a.class.name}"
#IT Does not substitute with appropriate value
puts '#{a.class.name}' 
puts "#{a}"
# " " allows any kind of escape sequence
# ' ' allows only \\, \' these two escape sequence and no substitution
puts "\\ \"" 
puts "\/"
puts "\]"
puts "\+"
puts "\'"
puts "\."
puts '\''  
puts '\\'  
puts "Hello"
puts "\\n is new Line character"