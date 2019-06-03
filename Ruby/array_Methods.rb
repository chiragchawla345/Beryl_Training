#arr<<obj
arr=Array.new
for i in 3..10
	arr << i
end
arr << 5 << 5 << 5
puts " arr is #{arr}"

#arr & other_arr => Intersection of two arrays without Duplicates
arr1=Array(5..12)
arr1<<5
puts "arr1 is #{arr1}"

new = arr & arr1
puts "Inersection of arr & arr1 is #{new}"
puts""

#arr*integer [or] arr*str
arr2=Array.[](1,"chirag",2.50)
puts "arr2 is #{arr2}"
puts "Repeat arr2 4 times by arr2*4 #{arr2*4}"
new=arr2*" cc "
puts "Appending cc between each two elements of array is through arr2*cc is #{new}"
puts""

#arr+Other_arr
puts "arr : #{arr}"
puts "arr1 : #{arr1}"
new=arr+arr1
puts "Concatenating arr and arr1 by arr+arr1 is : #{new}"
puts""

#arr-othet_arr
arr1=Array.[](5,6,7,8,9,10)
puts "arr is : #{arr}"
puts "arr1 is : #{arr1}"
new=arr-arr1
puts "remove all elements from arr which is present in arr1 is by arr-arr1 : #{new}"
puts ""

#arr | other_arr
arr1=Array.[](5,5,5,5,5,6,6,11,11)
puts "arr is : #{arr}"
puts "arr1 is : #{arr1}"
new = arr | arr1
puts "Join arr with arr1 removing Duplicates is #{new}" 
puts ""

#array<=>other_array
arr0= 0,1,2,4,5
arr1= 0,1,3
puts "arr0 is : #{arr0}"
puts "arr1 is : #{arr1}"
new = arr0<=>arr1
puts "arr0<=>arr1 is : #{new}"
puts""
arr0= 0,1,3,4,5
puts "arr0 is : #{arr0}"
puts "arr1 is : #{arr1}"
new = arr0<=>arr1
puts "arr0<=>arr1 is : #{new}"
puts ""

arr0=0,2
puts "arr0 is : #{arr0}"
puts "arr1 is : #{arr1}"
new = arr0<=>arr1
puts "arr0<=>arr1 is : #{new}"
puts ""

#arr=other_array
arr0=0,1,3
puts "arr0 is : #{arr0}"
puts "arr1 is : #{arr1}"
new = arr0==arr1
puts "arr0==arr1 is equal if size and corresponding elements are also equals i.e arr0==arr1 is : #{new}"
puts ""

arr0=1,3,0
puts "arr0 is : #{arr0}"
puts "arr1 is : #{arr1}"
new = arr0==arr1
puts "arr0==arr1 is equal if size and corresponding elements are also equals i.e arr0==arr1 is : #{new}"
puts ""

arr0=1,3,0,0
puts "arr0 is : #{arr0}"
puts "arr1 is : #{arr1}"
new = arr0==arr1
puts "arr0==arr1 is equal if size and corresponding elements are also equals i.e arr0==arr1 is : #{new}"
puts ""

#arr[index] or arr.slice(index)
arr0 << 5
puts "arr0 is : #{arr0}"
puts "0th element i.e arr0[0] is #{arr0[0]}"
puts "0th element i.e arr0.slice(0) is #{arr0.slice(0)}"
len=arr0.length
puts "last element i.e arr0[len-1] is #{arr0[len-1]}"
puts "last element i.e arr0.slice[len-1] is #{arr0.slice(len-1)}"
puts ""

#arr[start,length] or arr.slice(start,length)
puts "arr0 is : #{arr0}"
new = arr0[1,3]
puts "array with start index 1, length 3 is #{new}"
new = arr0.slice(2,4)
puts "array with start index 2, length 4 is #{new}"
new = arr0[5,3]
puts "array with start index 5, length 3 is #{new}"
new = arr0[-3,2]
puts "array with start index -3 i.e 3rd element from last, length 2 is #{new}"
puts""

#array[range] or array.slice(range)
arr0 << 2
puts "arr0 is : #{arr0}"
new=arr0[1..4]
puts "array from index 1..4 is : #{new}"
puts""

#arr[index]=object
puts "arr0 is : #{arr0}"
arr0[3]=4
puts "after replacing arr[3] with 4 arr0 is : #{arr0}"
arr0[3]='chirag'
puts "after replacing arr[3] with 'chirag' arr0 is : #{arr0}"
arr0[3]=1.000990000
puts "after replacing arr[3] with 1.000990000 arr0 is : #{arr0}"
puts ""

#arr[start,length]= obj or arr or nil
puts "arr0 is : #{arr0}"
arr0[3,2]=1
puts "Replacing arr[3],arr[4] with single object i.e arr0[3,2] is : #{arr0}"
puts ""
puts "arr0 is : #{arr0}"
arr0[2,2]=nil
puts "Replacing arr[2],arr[3] with nil i.e arr0[3,2] is : #{arr0}"
puts ""
puts "arr0 is : #{arr0}"
arr0[2,2]=4,5,6,"chirag"
puts "Replacing arr[2],arr[3] with array of 4 elements i.e arr0[3,2] is : #{arr0}"
puts ""
puts "arr0 is : #{arr0}"
arr0[8,2]=4,5,6,"chirag"
puts "Replacing arr[8],arr[9] with array of 4 elements i.e arr0[3,2] is : #{arr0}"
puts ""

#arr[range]=object or nil or array
#same as above


#array.asscoc(obj)
a="a","b","c","d"
b="a","B","C","D"
c="arr","c","d","arr"
d="d"
arr = a,b,c,d
puts "arr is : #{arr}"
new=arr.assoc("arr")  #=>return the first array whose first element is "arr" i.e c
puts "#{new}"
new=arr.assoc("a")  #=>return the first array whose first element is "a" i.e a
puts "#{new}"
new=arr.assoc("ar")  #=>return the first array whose first element is "ar" i.e nil
puts "#{new}"
new=arr.assoc("d")  #=>return the first array whose first element is "d" i.e nil because d is a string not array
puts "#{new}"

#array.clear
puts " arr is #{arr}"
arr.clear
puts "arr after arr.clear is : #{arr}"
puts""

#array.collect{|item| block} or array.map{|item| block}
arr=5,6,7,8,9
puts "arr is : #{arr}"
new=arr.collect{|i| i*3}   #=>Traverse each element of array one by one Performs Corresponding Operation 
puts "arr after applying arr[i]*3 : #{new}"  #=>And return the result of operation for each element to other array

arr.collect!{|i| i+2}
puts "arr after applying arr[i]+2 is : #{arr}"  #=>Perform operation on same array
puts""

#array.compact or array.compact!
arr=1,2,3,4,5,6,7
arr[2,2]=nil
arr[5,2]=nil
puts "Array with nil elements are #{arr}"
new=arr.compact!
puts "Array after compact operation is #{new}"
puts""

#array.concat(other_arr)
arr1=1,3,6,7
puts "Before Concatenation"
puts "arr : #{arr}"
puts "arr1 : #{arr1}"
arr.concat(arr1)  #=>Concat other_array to array
puts "After Concatenation of arr1 to arr"
puts "arr : #{arr}"
puts "arr1 : #{arr1}"
puts ""

#array.delete(obj)  Delete the object if found and return the corresponding object else return nil
arr=1,5,9,"ch","cc","ch"
puts "arr is : #{arr}"
arr.delete("ch")
puts "After Deleting \"ch\" #{arr}"
arr[2..3]=nil
puts "After Replacing arr[2..3] to nil : #{arr}"
arr.delete(nil)
puts " After Deleting nil : #{arr}"
new=arr.delete(6)
puts "After Deleting 6 : #{arr}"
puts "Value returned after Deleting 6 is :#{new}"
puts""

#array.delete(obj){block}  Delete the object if found and return the corresponding object else return result of block
arr=1,5,9,"ch","cc","ch"
puts "arr is : #{arr}"
arr.delete("ch")
puts "After Deleting \"ch\" #{arr}"
arr[2..3]=nil
puts "After Replacing arr[2..3] to nil : #{arr}"
arr.delete(nil)
puts " After Deleting nil : #{arr}"
new=arr.delete(6){"Not Found"}
puts "After Deleting 6 : #{arr}"
puts "Value returned after Deleting 6 is :#{new}"
puts""

#array.delete_at(index) 
#=>Delete the element from the specified index and returns the deleted value or nil if index is out of range
arr=1,2,3,4,5
puts "arr is #{arr}"
arr.delete_at(2)
puts "arr after deletion #{arr}"
