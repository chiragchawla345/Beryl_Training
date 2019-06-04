# Hash Examples

#Default value is months
month = Hash.new("months")
# return nil or default value if key not exist
# and return nil key exist but corresponding value does not exist 
puts "#{month[0]}"
puts "#{month[49]}"
puts "#{month.size}"

H1 = Hash["a"=>100, "b"=>200, "c"=>300, 4=>500]
puts "#{H1['a']}"
puts "#{H1[4]}"

 # By default key,value pair is 100=>200, 3000=>400
H2 = Hash[100, 200, 3000, 400]
puts "#{H2[3000]}" 
arr = Array(0...5)
#any Object can be used as key or value
H3 = Hash[1=>"chirag", "ab"=>12, H2=>3, "arr"=>arr] 
puts "#{H3[H2]}"
puts "#{H3["arr"]}"

month = { 1=>"Jan", 2=>nil, 3=>"mar" }
puts "#{month[3]}"
puts "#{month.keys}"
keys = month.keys
puts "#{keys} #{keys.class}"
puts "#{month[2]}"