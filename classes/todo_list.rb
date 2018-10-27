class List
  def initialize(tasks)
    @tasks = tasks
    @completed = false
  end

  def all_tasks
    @tasks
  end

  def done?
    @completed
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task!(task)
    @tasks.delete!(task)
  end

  def add_list(filepath)
  end
end
