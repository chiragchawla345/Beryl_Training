 range=(0..9)
 puts "#{range}"    #0..9
 range=(0..9).to_a
 puts "#{range}"
 alphabets=('a'..'z').to_a
 puts "#{alphabets}"
 range=('aa'..'zz').to_a
 puts "#{range}"

 range=('a'..'z')
 puts range.include?('hi') #false
 puts range.include?('g')  #true
 puts range.min            #a
 puts range            #z
 range.reject {|i| i=='a'}
 b  = range.reject {|i| i=='a' || i=='e' || i=='o' || i=='u' || i== 'i'}
 puts b.min

 a=1
 b=10
 puts "yes" if ((1..10)==50)
 if((a..b)==50)
 	puts "yes"
 else
 	puts "No"
 end