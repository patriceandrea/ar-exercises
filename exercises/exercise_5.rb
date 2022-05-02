require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "----Sum-----"
puts Store.sum(:annual_revenue)

puts "----- Average-----"
puts Store.average(:annual_revenue)

@women_stores = Store.where("annual_revenue < 1000000").where( womens_apparel: true)

puts "--------Store with more than 1M in anual revenue-------- "

puts Store.where("annual_revenue > 1000000").count()