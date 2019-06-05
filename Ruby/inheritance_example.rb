class Box
	@width
	@height
	def initialize(w, h)
		@width = w
		@height = h
	end
	def print_area
		puts "Box area is #{@width * @height}"
	end
end
class BigBox < Box
	def print_a
		puts "Big Box are is #{@width * @height}"
	end
end
box = BigBox.new(20,30)
box.print_area
box.print_a
