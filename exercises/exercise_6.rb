require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Henry", last_name: "Drew", hourly_rate: 45)
@store2.employees.create(first_name: "Elena", last_name: "Wolfe", hourly_rate: 55)
puts Employee.count