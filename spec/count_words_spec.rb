require 'count_words'

RSpec.describe "count_words" do
	it "return number of words in string" do
		result = count_words("Hello I'm Ollie")
		expect(result).to eq(3)
	end 
end 