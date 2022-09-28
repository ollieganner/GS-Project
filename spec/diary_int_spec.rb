require 'diary_entry'
require 'diary'

RSpec.describe "Diary Integration" do
	it "adds and lists diary entries" do
		my_dir = Diary.new 
		entry = DiaryEntry.new('The Dog', 'Got his bone')
		entry_2 = DiaryEntry.new('The Cat', 'Got his tuna fish')
		my_dir.add(entry)
		my_dir.add(entry_2)
		result = my_dir.all
		expect(result).to eq([entry,entry_2])
	end 
	it "count words of all entries" do
		my_dir = Diary.new 
		entry = DiaryEntry.new('The Dog', 'Got his bone')
		entry_2 = DiaryEntry.new('The Cat', 'Got his tuna fish')
		my_dir.add(entry)
		my_dir.add(entry_2)
		result = my_dir.count_words
		expect(result).to eq(7)
	end 
	it "reading time" do
		my_dir = Diary.new 
		entry = DiaryEntry.new('The Dog', 'Got his bone')
		entry_2 = DiaryEntry.new('The Cat', 'Got his tuna fish')
		my_dir.add(entry)
		my_dir.add(entry_2)
		result = my_dir.reading_time(1)
		expect(result).to eq(7)
	end 
	it "best reading time" do
		my_dir = Diary.new 
		entry = DiaryEntry.new('The Dog', 'Got his bone')
		entry_2 = DiaryEntry.new('The Cat', 'Got his tuna fish')
		entry_3 = DiaryEntry.new('The Rabbit', 'Got a big big orange carrot')
		my_dir.add(entry)
		my_dir.add(entry_2)
		my_dir.add(entry_3)
		result = my_dir.find_best_entry_for_reading_time(1, 4)
		expect(result).to eq(entry_2)
	end 
end 