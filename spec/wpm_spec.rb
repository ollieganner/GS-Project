require 'wpm'

RSpec.describe "wpm" do
	it "returns the words per minute" do
		result = wpm("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc commodo hendrerit magna, vitae tristique dui suscipit sed. Aenean sed felis eros. Phasellus vitae ante in est pellentesque tempor. Vivamus pulvinar turpis sit amet justo suscipit mattis. Pellentesque quis laoreet neque. Pellentesque nec iaculis turpis, eu semper dolor. Sed sagittis odio ac massa fringilla finibus. Etiam lorem mauris, varius eu molestie a, volutpat venenatis arcu. Duis at est nunc. Phasellus convallis iaculis mollis. Quisque id tortor ac neque imperdiet laoreet eget vel nulla. Aenean quis sapien nulla. Vestibulum bibendum non risus eget maximus. Etiam non est a augue malesuada vulputate. Cras metus nunc, pulvinar et nisi eu, facilisis condimentum eros. Sed at justo sit amet ipsum molestie dignissim. Morbi congue ullamcorper urna, vitae maximus urna euismod non. Donec ut arcu urna. Fusce cursus vitae magna id volutpat. Integer porta euismod elementum. Sed condimentum magna nibh, a tempus mi placerat eu  Nam et vestibulum lectus. Curabitur ac rutrum turpis, at aliquet est. Nulla volutpat molestie arcu id ornare. Mauris elementum quam eget elementum elementum. Suspendisse tempus sagittis purus. Praesent in fringilla ligula. Nullam ut consequat neque. Curabitur arcu felis, porta eu feugiat ut, laoreet at risus. Pellentesque ut vulputate felis. Nulla facilisi.")
		expect(result).to eq(1)
	end 
end 