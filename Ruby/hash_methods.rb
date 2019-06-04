# Hash Methods Practice

# hash == other_hash
# Two hashes are equal if they have same number of key value pairs
# each key-value pair in hash should be same as corresponding key-value pair in other_hash
h1 = Hash[:a => 1, :b => 2, :c =>3, :d => 3]
h2 = Hash['a' => 1, 'b' => 2, 'c' =>3]
puts (h1 == h2)
h2 = Hash[:a => 1, :b => 2, :c =>3, :d => 3]
puts (h1 == h2)

# hash[key]
# return the value corresponding to the key
# return nil or default value if key not found
puts h1[:e]
puts h1[:a]

# hash[key] = value
# assign the specified value to the value of specified key
# if key not exist, it will create a new kay value pair.
  # with specified key and value and merge it to the end of self hash 
h1[:d] = 4
puts h1
h1[:e] = 5
puts h1

# hash.clear
# clear all key value pairs from self hash
puts h2
h2.clear
puts h2

# hash.default(key = nil)
# return default value or nil if default value not set
puts h1.default(key = nil)
# this might give the corresponding value of nil key
puts h1[key = nil]

# hash.default = obj
# set the default value of hash
h1.default = 0
puts h1.default( key = nil)

# hash.delete(key) [or] hash.delete(key) { |key| block }
# delete the key value pair having the key specified as argument and return the corresponding value
# hash.delete(key) : if key not found it deletes nothing and return nil
# hash.delete(key) { |key| block } : if key not found rteutn the result of block
h2 = Hash.new("!")
h2 = { 97 => "a", 98 => "b", 99 => "c", 100 => "d" }
new1 = h2.delete(100)
puts new1
puts h2
new1 = h2.delete(100)
puts new1
puts h2

h2 = { 97 => "a", 98 => "b", 99 => "c", 100 => "d" }
new1 = h2.delete(100) { |key| "Key not present" }
puts new1
puts h2
new1 = h2.delete(100) { |key| key.to_s+" was not present" }
puts new1
puts h2

# hash.delete_if { |key, value| block}
# Delete the key calue pair for which the block condition is true
h2 = Hash.new("!")
h2 = { 97 => "a", 98 => "b", 99 => "c", 100 => "d", 101 => "f", 103 => "g" }
h2.delete_if { |key, value| key.chr != value }
puts h2

# hash.each { |key, value| block }
# each key value pair is traverse to each block
h2.each { |key,value| puts "key: #{key}  value: #{value}" }
h2.each { |key,_| puts "key: #{key}" }

# hash.each_key { |key| block }
# passing key as a parameter
h2.each_key { |key| puts "key: #{key}" }
# it only passes key,so if we also use some other parameter it is nil because not passed
h2.each_key { |key,value| puts "key: #{key} value: #{value}" }

puts "LineBreak"
# these both are also printing Keys
h2.each_key { |key_value_pair| puts "#{key_value_pair}" }
h2.each_key { |value| puts "#{value}" }

# hash.fetch(key,default)
puts h2.fetch(97)
# Error if key not found i. in the below line
# puts h2.fetch(101)
# If default value is given it return default value if key not found
puts h2.fetch(101,"!")

# hash.index(value)
# gives the key corresponding to value otherwise nil
# if more than one value exist return the key for first value
# puts h2.index("d")
# puts h2.index("e")
# h2 = { 97 => "a", 98 => "a"}

# hash.invert
h3 = Hash.new("!")
h3 = { 97 => "a", 98 =>"a", 99 => "a" }
puts h3.inspect
puts h3.invert

#hash.merge(other_hash)
h4 = Hash.new("!")
h4 = { 99 => "b", 100 => "b" }
new1 = h3.merge(h4)
puts new1.inspect

# hash.replace(other_hash)
puts h3
puts h4
h3.replace(h4)
puts h3

# hash.select { |key, value| block }
# return another hash contating key value pairs where condition is true
arr = h3.select { |key,value| value=="b" }
puts "#{arr} #{arr.class}"

#hash.sort
h3 = Hash[100=>"b",99=>"a"]
arr = h3.sort
puts arr.inspect
puts h3.to_s