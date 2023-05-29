require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
store = Store.find_by("id": 1)
@store1 = store
store = Store.find_by("id": 2)
@store2 = store

# Update the first store instance in db
@store1.update(name: "STORE_BURNABY")