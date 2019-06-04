#This Program Defines the number of Ways to Initiallize array
#Initiallization by simple Assignment
arr = Array.new 
arr = [1]
arr = [2, 6, "chirag", 'abc', 12.567]   
#Array is a Collection of Objects

puts "#{arr.size}"
puts "#{arr.length}"
puts "#{arr}"
#An array can also hold the object of some other array
arr1 = [1, 3, 4, 5, arr]  
puts "#{arr1.size}"
puts "#{arr1}"
arr1.each { |i| puts i }

#initiallize array with index
arr2 = Array.new(10) { |i| i }   
puts "#{arr2}"

#initiallize with index*2
arr2 = Array.new(10) { |i| i*2 }   
puts "#{arr2}"
#arr2 = Array.new[0, 0, 0, 0, 0, 0, 0] { |i| 1 } => initiallize array with 1

#Initiallization using range
arr3 = Array(2..10)
puts "#{arr3}"

arr3 = Array[2, 3, 4, 5, 6, 7, 8, 9]
puts "#{arr3}"

arr3 = Array.[](1, 2, 3, 4, 5)
puts "#{arr3}"