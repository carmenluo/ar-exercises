require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"
# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)
@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Carmen", last_name: "Luo", hourly_rate: 80)
@store1.employees.create(first_name: "Car", last_name: "Lu", hourly_rate: 50)
@store2 = Store.find_by(id: 2)
# @store2.employees.create(first_name: "Turram", last_name: "Virani", hourly_rate: 60)
# @store2.employees.create(first_name: "Cn", last_name: "Luo", hourly_rate: 80)
# em= @store2.employees.create(first_name: "Dan", last_name: "Lu", hourly_rate: 30)
# puts em.valid?
# puts em.errors.messages
@store1.update(name: 'Toronto')