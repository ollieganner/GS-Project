require 'improved_todo'
require 'improved_todo_list'

RSpec.describe 'Integrated'do
	it "add ToDo to TodoList and check" do
		to_do = Todo.new('Clean clothes')
		list = TodoList.new	
		list.add(to_do)
		result = list.incomplete
		expect(result).to eq([to_do])
	end 
	it "one complete" do
		to_do = Todo.new('Clean clothes')
		to_do_2 = Todo.new('Clean dog')
		to_do.mark_done!
		list = TodoList.new	
		list.add(to_do)
		list.add(to_do_2)
		result = list.complete 
		expect(result).to eq([to_do])
	end 
	it "one incomplete" do
		to_do = Todo.new('Clean clothes')
		to_do_2 = Todo.new('Clean dog')
		to_do.mark_done!
		list = TodoList.new	
		list.add(to_do)
		list.add(to_do_2)
		result = list.incomplete 
		expect(result).to eq([to_do_2])
	end 

	it "give up" do
		to_do = Todo.new('Clean clothes')
		to_do_2 = Todo.new('Clean dog')
		list = TodoList.new	
		list.add(to_do)
		list.add(to_do_2)
		list.give_up!
		result = list.incomplete 
		expect(result).to eq([])
	end 
end 