require 'make_snippet'

RSpec.describe "make_snippet" do
	it "for strings less than 5 words" do
		result = make_snippet("Hello I'm Ollie")
		expect(result).to eq("Hello I'm Ollie")
	end 
	it "for strings greater than 5 words" do
		result = make_snippet("Hello my name is Ollie and I love to eat peaches")
		expect(result).to eq("Hello my name is Ollie...")
	end 
end 