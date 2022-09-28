require 'improved_todo'

RSpec.describe Todo do
	it "create todo and check return" do
		to_do = Todo.new('Clean clothes')
		result = to_do.task 
		expect(result).to eq('Clean clothes')
	end 
	it "mark done and check " do
		to_do = Todo.new('Clean clothes')
		to_do.mark_done!
		result = to_do.done?
		expect(result)
	end 
end 