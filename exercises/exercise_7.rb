require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter a store name:"
print "> "
user_input = gets.chomp
puts "Creating store..."
# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
store = Store.create(name: user_input)
store.save
# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
if store.save
  puts "Store created!"
else
  puts store.errors.full_messages
end