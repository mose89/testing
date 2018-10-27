require_relative 'todo_list'

puts "-----Please choose an option-----"
puts "1 - Create a new todo list"
puts "2 - Add a new task"
puts "3 - Mark a task as done and remove it"
puts "4 - Import tasks from csv files"

user_input = gets.chomp.to_i

case user_input
when 1
  puts "Write down the task"
  task = gets.chomp
  puts "What do you want to call the list?"
  name = gets.chomp
  name = List.new(task)
  puts "Thanks we have created a new todo list called #{name} with one task #{task}"
when 2
  puts "What is the name of your todo list?"
  list_name = gets.chomp
  puts "What is the task you want to add?"
  task_name = gets.chomp
  list_name.add_task(task_name)
  puts "Thanks, we have addedd the task #{task_name} to the list #{list_name}"
when 3
  puts "What is the name of the list with a completed task?"
  list_name = gets.chomp
  puts "What is the task you have completed"
  puts list_name.each { |task| puts task }
  task = gets.chomp
  list_name.remove_task!(task)
end

