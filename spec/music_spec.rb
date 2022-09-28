require 'music'

RSpec.describe Music do
	it "add to list and see list" do
		list = Music.new 
		list.add('Song1')
		list.add('Song2')
		list.add('Song3')
		result = list.view()
		expect(result).to eq(['Song1', 'Song2', 'Song3'])
	end 
end 