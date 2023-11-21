=begin
Ways to push to array

array << "new_element"
array.push("new_element")
=end
require "json"

# Same as previous ToDo program, but with ability to save todo list
def save_todos_to_file(todo_list = [], file_name = "todos.json")
  file = File.open(file_name, "w") do |file|
    file.puts todo_list.to_json
  end
end

add_todo = true

todos = []

print "Give your list a name: "
list_name = gets.chomp
puts

puts "---------- #{list_name} ----------"
while add_todo
  print "ToDo > "
  todo_input = gets.chomp
  if todo_input != ""
    todos.push(todo_input)

    print "=> Add todo? (y/n) "
    cont = gets.chomp

    if cont.downcase != "y"
      add_todo = false
    end
  end
end

todos.each do |element|
  puts element
end

print "Save List to file? (y/n)"
save_to_file = gets.chomp.downcase

if save_to_file == "y"
  print "Enter file name (with .json) > "
  file_name = gets.chomp

  save_todos_to_file(todos, file_name)
end

puts "[+] Done"
