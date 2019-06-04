 # range Examples
 range = (0..9)
 # 0..9
 puts "#{range}"

 range=(0..9).to_a
 puts "#{range}"

 alphabets=('a'..'z').to_a
 puts "#{alphabets}"
 
 # conatin all the string from aa to zz i.e 26*26 strings
 range=('aa'..'zz').to_a
 puts "#{range}"

 range=('a'..'z')
 puts range.include?('hi') #false
 puts range.include?('g')  #true
 puts range.min            #a
 puts range                #a..z

 # Removing vowels from the range a..z
 b  = range.reject { |i| i == 'a' || i == 'e' || i == 'o' || i == 'u' || i == 'i' }
 puts b.min
 puts "#{b.to_a}"

 a = 1
 b = 10
 puts "7 lies inside range " if ((a..b) === 7)
 if((a..b) === 50)
 	puts "50 inside range"
 else
 	puts "No, 50 Doesn't lie in the range"
 end