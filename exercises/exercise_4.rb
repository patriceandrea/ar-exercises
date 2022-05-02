require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )


@store4= Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

@store5= Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

@store6= Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)



puts "------- mens_store ----- "

@men_stores = Store.where(mens_apparel:true, womens_apparel:false)
@men_stores.each do |store|
  # puts store.inspect
  puts "#{store.name}: #{store.annual_revenue}  "
end

puts "------- womens_store ----- "
@women_stores = Store.where("annual_revenue < 1000000").where( womens_apparel: true)

puts @women_stores.inspect