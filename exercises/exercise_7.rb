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

puts "-----Employees---- "
puts "-----True------"
puts @store6.employees.create(first_name: "Patrick", last_name: "The Star", hourly_rate: 30).valid?

puts "-----Falses------"
puts @store6.employees.create(first_name: nil, last_name: "The Star", hourly_rate: 30).valid?
puts @store6.employees.create(first_name: "Patrick", last_name: nil, hourly_rate: 30).valid?

puts "-------more than the hourly rate-----"
puts @store6.employees.create(first_name: "Patrick", last_name: "Pavico", hourly_rate: 300).valid?
puts "-------it is b/w the hourly rate-----"
puts @store6.employees.create(first_name: "Patrick", last_name: "Pavico", hourly_rate: 50).valid?
puts "-------the hourly rate not an integer-----"
puts @store6.employees.create(first_name: "Patrick", last_name: "Pavico", hourly_rate: "Yo").valid?



puts "-----Store---- "
puts "Store name is not min 3 characters"

store11 = Store.create(name: "YO", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
puts store11.valid?

puts "Store name is more than  3 characters"
store11 = Store.create(name: "YOass", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
puts store11.valid?

puts "---- Store annual revenue more than 0----- "
store12 = Store.create(name: "YOass", annual_revenue: 0, mens_apparel: false, womens_apparel: true )
puts store12.valid?

puts "---- Store annual revenue more than 0----- "
store12 = Store.create(name: "YOass", annual_revenue: 10000000, mens_apparel: false, womens_apparel: true )
puts store12.valid?


puts "Dialogue"
puts "user: what is the store name? "
storeName = gets.chomp

store13 = Store.create(name: storeName)
# puts store13.valid?

if store13.valid? == false
  puts "Error message: name of store does not exist"
  puts store13.errors.full_messages
end 

