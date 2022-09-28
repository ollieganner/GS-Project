class DiaryEntry  
  def initialize(title, contents) 
    @title = title
    @contents = contents
  end

  def title
    @title
  end

  def contents
     @contents
  end

  def count_words
    @count = @contents.split(' ').length
    
  end

  def reading_time(wpm) 
    @count / wpm
  end

  def reading_chunk(wpm, minutes) 
    words = wpm * minutes
    @contents.split(' ')[0...words].join(' ')
  end
end