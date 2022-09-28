require 'grammar'

RSpec.describe "grammar" do
	it "if starts with capital and ends with punc" do
		result = grammar('Hello!')
		expect(result)
	end 
	it "if not capital at starts" do
		expect {grammar('hello!')}.to raise_error "No capital."
	end 
	it "if not punct at end" do
		expect {grammar('Hello')}.to raise_error "No punctuation."
	end 
	it "if not punct at end or capital at start" do
		expect {grammar('hello')}.to raise_error "Require capital and punctuation."
	end 
end 