require 'diary_entry'

RSpec.describe DiaryEntry do
	it "enter new diary entry and check contents" do
		entry = DiaryEntry.new('The Dog', 'Got his bone')
		expect(entry.title).to eq('The Dog')
		expect(entry.contents).to eq('Got his bone')
	end 

	it "check reading time and work chunk" do
		entry = DiaryEntry.new('The Dog', 'Got his bone')
		expect(entry.count_words).to eq(3)
		expect(entry.reading_time(1)).to eq(3)
		expect(entry.reading_chunk(1,1)).to eq('Got')
	end 
end 