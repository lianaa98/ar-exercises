require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

store = Store.find_by("id": 3)
@store3 = store
@store3.destroy

puts Store.count
