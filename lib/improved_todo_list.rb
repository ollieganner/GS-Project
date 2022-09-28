class TodoList
  def initialize
    @to_do_list = []
  end

  def add(todo) # todo is an instance of Todo
    @to_do_list << todo
  end

  def incomplete
    @to_do_list.select {|x| !x.done?}
  end

  def complete
    @to_do_list.select {|x| x.done?}
  end

  def give_up!
    @to_do_list.each {|x| x.mark_done!}
  end
end