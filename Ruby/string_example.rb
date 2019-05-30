str = "THIS IS TEST"
foo = str.downcase

puts "#{foo}"
a=1
b=String.try_convert(a)
puts "#{b} #{b.class.name}"

#Format Specification
c="%07d" % 678
puts "#{c}"
c="% 7d" % 678
puts "#{c}"
puts "%-5s : % 5d" % ["ID",678]

#str * integer → new_str
puts "chirag " * 5	#integer is converted to corresponding character

#str + other_str → new_str
a="chirag"
c= "Hello " + a
puts "#{c}"
c=c+" "+a
puts "#{c}"
c="Hello" " World"    #No need of + Operator in this case Because both are String Literals
puts "#{c}"

#str << integer → str
puts c<<97
#str << object → str
puts c<<" abc"
puts c<<12.567.to_s


#concat(obj1, obj2,...) → str
c="abc"
c.concat("de",102,103,104,55.55.to_s)
puts "#{c}"
d="op"
e=c+d
puts "#{d}"
d.concat(c,c)
puts "#{d}"

#string <=> other_string → -1, 0, +1 or nil
puts "bcda"<=>"bcd"    #1
puts "abca"<=>"abdz"   #-1
e= "abcd"<=>"abcd"   #0
puts "#{e} #{e.class.name}"
puts "ab"<=>97.to_s+98.to_s #1
puts "ab "<=>97        #nil

#str == obj → true or false
a="abc"
b='abc'
puts a==b  #true
puts "a"==97 #false
puts "a"==78.56 #false
puts 97==97.to_s #false Types are different
puts 97.to_s==97.to_s #true


c="abaaacdefgh"
puts c=~/cde/  #=>5 returns the starting position where first match occurs
puts c[5]	   #str[index]
puts c[5,4]	   #str[index.,length]
puts c[-5,3]   #str[-inex_from_right_Starts_1,length]
puts c[0..5]


#capitalize
c="hello World"
d=c.capitalize
puts "#{d} #{c}"   #Not doing the changes on the calling string
c.capitalize!
puts "#{c}"		   #doing the changes on calling string

c="Hello world"
d=c.capitalize
puts "#{d} #{c}"   #Not doing anything if already in required format
c.capitalize!
puts "#{c}"	       #return nil if already in required format

#casecmp
a="abc"
b="aBc"
puts a==b         #false because it is case sensitive comparision
puts a<=>b        # 1 beacuse case sensitive comparision
puts a.casecmp(b) # 0 means equal beacuse case insensitive comparision

#casecmp?
puts a.casecmp?(b) #true
b="AB"
puts a.casecmp?(b) #false
puts "\u{c4 d6 dc}".casecmp?("\u{c4 d6 dc}")  #true


#center
puts "hello".center(4)  #hello
puts "hello".center(20) #
puts "hello".center(20,"123")
puts "hello".center(20,"123")

#chomp(seperator) removes \n or \r or \r\n from the end of the string
puts "hello\r\n".chomp+"world"   #removes \r\n
puts "hello\n\n".chomp+"world"   #removes \n from the end
puts "hello\r".chomp+"world"    #removes \r
puts "hello".chomp('ello')+"world"

#chomp!(seperetor) it mofifies the calling string
a="hello"
a.chomp!("llo")
puts a
a.chop!  #removes the last character to the str
puts a
a="hello"
a.delete!("lwo")
puts a;