

# delete_if { |item| block }
arr = Array.new
for i in 11..20
	arr << i
end
puts "Initial Array : #{arr}"
# Deletes every element of self for which block evaluates to true.
arr.delete_if { |item| item%2 == 0 }
puts "Array after delete if arr[i]%2 == 0 is #{arr}"
puts ""

# array.each { |item| block }
# Calls block once for each element in self, passing that element as a parameter
arr.each { |i| puts "#{i}" }
puts ""

# array.each_index { |index| block }
# Same as Array.each, but passes the index of the element instead of the element itself.
arr.each_index { |i| arr[i] += 10 } 
puts "#{arr}"
puts ""

# array.empty?
# Returns true if the self array contains no elements.
if (arr.empty? == true)
	puts "arr is Empty"
else
	puts "arr is not Empty"
end

puts ""

# array.eql?(other)
# Returns true if array and other are the same object, or are both arrays with the same content.
arr1 = arr
# Both arr and arr1 having same object id
puts "arr is #{arr}"
puts "arr1 is #{arr1}"
puts "Both are same Object or Equal" if(arr.eql?(arr))
if(arr.eql?(arr1))
	puts "Both arr and arr1 are Equal or same Object" 
else
	puts "Both are not equal or not same objects"
end

puts ""

arr1 = 21, 23, 25, 27, 29
puts "arr is #{arr}"
puts "arr1 is #{arr1}"
# both arr and arr1 having same elements
if(arr.eql?(arr1))
	puts "Both arr and arr1 are Equal or same Object" 
else
	puts "Both are not equal or not same objects"
end

# array.fetch(index)
# Tries to return the element at position index
puts arr.fetch(4)
# This will not give any error
puts arr[5]
# This will generate error "outside of array bound"
# puts arr.fetch(5)


# array.fetch(index, default)
# Tries to return the default object, if index is out of Bound
puts arr.fetch(4, 31)
puts arr.fetch(6, 31)
puts "#{arr}"

# array.fetch(index) { |index| block }
puts arr.fetch(4) { |i| i*2 }
puts "#{arr}"
arr << nil
puts "#{arr}"
# return the result of block if index out of bound
puts arr.fetch(6) { |i| i*2 }
puts "#{arr}"


# array.fill(obj)
# replaces all the elements of array with object
arr = Array.[](1, 2, 3, 45, 6)
puts "#{arr}"
arr.fill(nil)
puts "#{arr}"
# if array is empty so it cant replace any element
# so array still remains empty
arr1 = Array.new
puts "#{arr1}"
arr1.fill(2)
puts "#{arr1}"

# array.fill(obj, start, length)
# replaces the selected elements with object
arr = Array.[](1, 2, 3, 4, 5)
arr.fill("cc",1,3)
puts "#{arr}"
# Expands the array
arr.fill("cc",6,3)
puts "#{arr}"

# array.fill(obj,range)
# replaces all the elements inside range with the obj
arr = Array.[](1, 2, 3, 4, 5)
arr.fill("ch", 2..6)
puts "#{arr}"

# array.flatten
# Return a single 1-D array i.e flattening of self array
a=1, 2, 3
b=4, 5, 6
arr=a, b, "ch", 8, 9
puts "arr without flatten #{arr} #{arr.size}"
new = arr.flatten
puts "Arr with flatten #{new} #{new.size}"

# array.flatten!
# Flattens array in place 
# or returns nil if no modification were made
a=1, 2, 3
b=4, 5, 6
h1 = Hash[:A => 1, :b =>2]
arr=a, b, "ch", 8, h1, 9
puts "arr without flatten! #{arr} #{arr.size}"
arr.flatten!
puts "Arr with flatten! #{arr} #{arr.size}"
puts "Arr with flatten! #{arr.flatten!}"

# array.frozen?
arr=1, 3, 5, 7, 9
puts arr.frozen?
arr.freeze
puts arr.frozen?
# if array is frozen we can't modify array, it will give runtime error
# arr << 11, Error
# arr[2,2] = nil, error

require 'fiddle'

class Object
  def unfreeze
    Fiddle::Pointer.new(object_id * 2)[1] &= ~(1 << 3)
  end
end

arr.unfreeze
puts arr.frozen?

# array.insert(index, obj)
# insert the obj just before the index if index is +ve
# in case, if index is -ve, it insert after this index
arr = 1, 2, 3, 4, 5
arr.insert(4, 'c')
puts "#{arr}"
arr.insert(-6, 'h')
puts "#{arr}"
arr.insert(0, 't')
puts "#{arr}"
arr.insert(-1, 'l')
puts "#{arr}"

# array.inspect : creates or returns a printable version of array
new = arr.inspect
puts new

# array.join(sep=$)
arr = 1, 2, 3, 4, 5
str = arr.join("+")
puts "#{str} #{str.class}"

# array.map { |item| block} or array.collect { |item| block }
# invokes the block of each value of array
# and creates a new array contains the value returned by the block
arr = "c", "a", "d", "s", "r", "i"
new = arr.map { |item| item.succ }
puts new.inspect

# array.push(obj, ...)
# pushes the object(s) to the end
arr = [1, 2, 3, 4, 5]
puts arr.inspect
arr.push("ch","ir","ag")
puts arr.inspect

# array.reject { |item| block }
# array.reject! { |item| block }
# reject the items for which the block condition is true
arr = (0..20).to_a
puts arr.inspect
new = arr.reject { |item| item%3 != 0 }
puts new.inspect


# array.reverse
# return a new array by reversing the array elements
# array.reverse!
# Reverse the array in place
arr = [1, 2, 3, 4, 5]
rev = arr.reverse
puts rev.inspect
arr.reverse!
puts arr.inspect

# array.rindex(obj)
arr = [1, 2, 5, 3, 5, 4, 5]
# returns the index of first object that matches the obj, otherwise nil
puts arr.index(5)
# returns the index of last element that matches the obj, otherwise nil
puts arr.rindex(5)

# array.select { |item| block }
# return new array with those elements of array for which the block condition holds true
arr = (0..20).to_a
new = arr.select { |item| item%3 != 0 }
puts new.inspect

# array.shift
# doing left shift, returns and removes first element from arr
arr = [1, 2, 3, 4, 5] 
puts "#{arr} #{arr.length}"
arr.shift
puts "#{arr} #{arr.length}"

# array.slice(index) [or] array[index]
# returns the element present at index
arr = [11, 22, 34, 46, 58]
puts "#{arr[4]}"
puts "#{arr.slice(4)}"
# return nil in case if index is out of bound
puts "#{arr[5]}"
puts "#{arr.slice(5)}"
puts "#{arr.slice(-6)}"

# array.slice(start, length) [or] array[start, length]
# return sub-array specified by start and length field
puts arr.slice(2, 6).inspect
puts arr.slice(-2, 4).inspect

#array.slice(range) [or] array[range]
# return sub-array with the elements whose index is specified in range
puts arr.slice(2..4).inspect
# range starts from fourth last element and prints consecutive three elemets
puts arr.slice(-4..3).inspect

# array.sort
# all the elements inside array should be of same class
# except array containing integer and float elements can be sorted
arr = [100, 26, 33, 490, 55, 06]
sort_arr = arr.sort
puts sort_arr.inspect

arr1 = ["ch", "cc", "chi", "cha", "ab", "Ab", "AB", "aB"]
sort_arr = arr1.sort
puts sort_arr.inspect

arr2 = [6.78, 4.57, 0.001, 99.99, 5, 70]
sort_arr = arr2.sort
puts sort_arr.inspect

# array.to_s
# convert array into string
arr = [1, 2, 3]
new = arr.to_s	
puts "#{new} #{new.class}"

# array.transpose
# self array should contain arrays only
# it transpose the 2-D array
a = [1, 2, 3]
b = [4, 5, 6]
c = [7, 8, 9]
d = [10, 11, 12]
arr = [a, b, c, d]
puts "Before transpose"
arr.each { |arrr| puts arrr.inspect}
trans_arr = arr.transpose
puts "After Transpose"
trans_arr.each { |arrr| puts arrr.inspect}

# array.unshift(obj,..)
# prepends object to the front of array
arr = [1,2, 3, 4, 5]
arr.unshift("c","A","t")
puts arr.inspect

# array.values_at(selector, ...)
# Returns an array containing the elements in self corresponding to the given selector (one or more).
# The selectors may be either integer indices or ranges.
arr = [1, 2, 3, 4, 5]
new1 = arr.values_at(4,1..3,0)
puts new1.inspect

