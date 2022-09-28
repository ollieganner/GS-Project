class Diary
  def initialize
       @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
      @entry = entry
      @entries << @entry
  end

  def all
    @entries
  end

  def count_words   
    @count = 0
    @entries.each do |entry|
        @count += entry.count_words 
    end 
    return @count
  end

  def reading_time(wpm) 
   reading_time = count_words() / wpm
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    total_words = wpm * minutes 
    cur_words = 0
    entry = 0
    @entries.each do |x|
        if x.count_words > cur_words && x.count_words <= total_words
            cur_words = x.count_words
            entry = x 
        end 
    end 
    entry
    end
end

