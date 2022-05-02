require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store2.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jake", last_name: "Peralta", hourly_rate: 45)
@store1.employees.create(first_name: "Rosa", last_name: "Diaz", hourly_rate: 30)
@store2.employees.create(first_name: "Gloria", last_name: "Pritchett", hourly_rate: 70)
@store1.employees.create(first_name: "Claire", last_name: "Pritchett", hourly_rate: 70)
@store4.employees.create(first_name: "Buzz", last_name: "Lightyear", hourly_rate: 70)
@store5.employees.create(first_name: "Woody", last_name: "Lightyear", hourly_rate: 80)
@store6.employees.create(first_name: "Patrick", last_name: "The Star", hourly_rate: 30)