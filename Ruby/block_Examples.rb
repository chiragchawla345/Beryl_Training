def test1
	puts "Inside Method"
	yield
	puts "Inside Method"
	yield
end 
test1 { puts "Inside block" }

puts ""

def test2
	puts "Inside Method"
	yield(10, 20)
	puts "Inside Method"
end
test2 { |a, b| puts "Block a : #{a} \nBlock b : #{b}" }

def met(&block) 
  puts "This is method" 
  block.call 
end 
met { puts "This is &block example" } 

def test3(a, b, &block)
	puts "#{a}"
	puts "#{b}"
	puts block.call(a, b)
end
test3(12, 10) { |i, j| puts "Inside Block #{i} #{j}" } 

def test3(a, b, *c, &block)
	puts "Inside Method a: #{a}"
	puts "Inside Method b: #{b}"
	c.each { |i| puts "Inside Methos c: #{i}"}
	puts block.call(a, b)
end
test3(12, 10, 11, "chirag", 20, 35, 50.06) { |i, j| puts "Inside Block #{i} #{j}" } 



