require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
stores = [
  {name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true},
  {name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false},
  {name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true},
]

Store.create(stores)
puts Store.count

@mens_stores = Store.where(mens_apparel: true)

for store in @mens_stores
  puts "#{store.name}, #{store.annual_revenue}"
end

@womens_stores_less_than_one_mil = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

for store in @womens_stores_less_than_one_mil
  puts "#{store.name}, #{store.annual_revenue}"
end