# String Eamples 2

# str.count(str1)
# count the number of characters which are present 
# in the intersection of str and distinct(str1)
a = "hello worrld"
puts a.count("eer")        #=> 3
puts a.count(" ")          #=> 1

# str.count(str1, str2, ...)
# First take intersection of all str1, str2, ...
# Then count the number of characters which are present in str and distinct(intersect string)
puts a.count("erl", "hol")    #=> 3
puts a.count("ho")            #=> 3
puts a.count("ello", "oldw")  #=> 5
puts a.count("r-w")           #=> 3  characrters between r & w inclusive
puts a.count("or-w")          #=> 5  Between o & w

# delete
puts a.delete("or-w")           #hell ld
puts a.delete("a-z", "^aeiou")  #delete all consonents

# dump
# Returns a string with all special characters escaped
puts "hello\b \n ''".dump   #hello \n ''
puts "hello\b \n ''"        #hello
						   ' '

# each_byte
"hello".each_byte { |c| print c, ' ' }
puts ""
"c \n 100".each_byte {|c| print c, ' ' }
puts""

# each_line
"hello \n world".each_line { |s| print s+" " }       # seperate substring after \n
puts ""
"hello \n world".each_line('l') { |s| print s+" " }  # seperate substring after 'l'
puts ""
"hello \b world".each_line { |s| print s+" " }       # no seperation
puts "New line"
"hello\n\n\nworld".each_line('') { |s| print s+" " } #=> "hello\n\n\nworld".each_line {|s| print s+" "}
													 #=> Seperate after \n\n\n

# hex
puts "ff".hex
puts "10".hex    # HexaDecimal to Decimal
puts "hello".hex # 0 in case of error beacuse it is a sequence of character but in hexadecimal only 0-9 and a-f are allowed
puts "af".hex													 

# include?
# checks passing string is a substring of calling string or not
puts "hello".include? "eo"  	  #=> false
puts "hello world".include? " "   #=> true
puts "hello world".include? "ell" #=> true

# index
# return index of string where first time pattern match 
# return nil in case of no match
puts "hello".index(/l./)    #=> 2
puts "hello".index(/e.../)  #=> 1
puts "hello".index(/e..../) #=> nil

# match
# return the first substring where match occurs
puts 'hello world'.match(/.l./)  #Return matched string
puts 'hello world' =~ /.l./ 
puts "cat o' 9 tails" =~ /9/     #Returns position 

# oct
puts "123".oct       #octal to decimal
puts "123ckadhs".oct #ignoring last characters
puts "cdskh123".oct  #0 if fails

