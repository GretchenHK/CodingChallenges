class Image
	
	def initialize(spots)
		@spots = spots
	end

	def output_image
		@spots.each do |i|
			puts i.join
		end
	end
end


image = Image.new([
	[0,0,0,0],
	[0,1,0,0],
	[0,0,0,1],
	[0,0,0,0]
])

image.output_image
	