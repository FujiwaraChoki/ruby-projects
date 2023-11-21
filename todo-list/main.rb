=begin
Ways to push to array

array << "new_element"
array.push("new_element")
=end

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
