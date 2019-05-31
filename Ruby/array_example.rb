arr=Array.new 
arr=[1]
arr=[2,6,"chirag",'abc',12.5678	]  #Array is a Collection of Objects
puts "#{arr.size}"
puts "#{arr.length}"
puts "#{arr}"
arr1=[1,3,4,5,arr]  #An array can also hod the object of some other array
puts "#{arr1.size}"
puts "#{arr1}"
arr1.each do |i|
	puts i
end

arr2=Array.new(10) {|i| i}   #initiallize with index
puts "#{arr2}"
arr2=Array.new(10) {|i| i*2}   #initiallize with index*2
puts "#{arr2}"
#arr2=Array.new[0,0,0,0,0,0,0] {|i| 1}   #initiallize with 1
#puts "#{arr2} #{arr2.size}"
arr3=Array(2..10)
puts "#{arr3}"
arr3=Array[2,3,4,5,6,7,8,9]
puts "#{arr3}"
arr3=Array.[](1,2,3,4,5)
puts "#{arr3}"