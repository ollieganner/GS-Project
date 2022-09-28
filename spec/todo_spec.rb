require 'todo'

RSpec.describe "todo" do
	it "when item on TODO" do
		result = todo("#TODO Clean Dishes")
		expect(result).to eq("In list.")
	end 
	it "when item not on TODO" do
		result = todo("Buy dog food")
		expect(result).to eq("Not in list.")
	end 
end 