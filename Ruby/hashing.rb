month=Hash.new("months") #Default value
puts "#{month[0]}"
puts "#{month[49]}"
puts "#{month.size}"
H1=Hash["a"=>100,"b"=>200,"c"=>300,4=>500]
puts "#{H1['a']}"
puts "#{H1[4]}"
H2=Hash[100,200,3000,400] #By default Key 100=>200 3000=>400
puts "#{H2[3000]}" 
arr=Array(0...5)
H3=Hash[1=>"chirag","ab"=>12,H2=>3,"arr"=>arr] #any Object can be used as key or value
puts "#{H3[H2]}"
puts "#{H3["arr"]}"

month={1=>"Jan",2=>"Feb",3=>"mar"}
puts "#{month[3]}"
puts "#{month.keys}"
keys=month.keys
puts "#{keys} #{keys.class}"