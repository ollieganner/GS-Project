class Todo
  def initialize(task) # task is a string
    @task = task
  end

  def task
    @task
  end

  def mark_done!
    @done = 1
  end

  def done?
    @done == 1 ? true : false
  end
end