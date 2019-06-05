class Box
	@width
	@height
	def initialize(w, h)
		@width = w
		@height = h
	end
	def print_area_box
		puts "Box area is #{@width * @height}"
	end
end
class BigBox < Box
	@breadth
	def initialize(w, h, b)
		@width = w
		@height = h
		@breadth = b
	end
	def print_area
		puts "Big Box are is #{@width * @height * @breadth}"
	end
end
box = BigBox.new(10, 30, 40)
box.print_area
box.print_area_box
