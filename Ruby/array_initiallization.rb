#Number of ways to initiallize array
arr = Array.new
arr = 1,2,"chirag"
puts "#{arr}"
arr = Array(0..9)
puts "#{arr}"
arr = Array.[](1,2,3,4,5)
puts "#{arr}"
arr = Array.[](1,2,4,6,"Chiar",'dheu',7.00099)
puts "#{arr}"
arr1 = Array[12,6,"ch",5.6783,4,5]
puts "#{arr1}"
puts arr1[1]
puts arr1.at(1)

