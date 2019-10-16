require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

@store2.employees.create(first_name: "Turram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "carmen", last_name: "Virani", hourly_rate: 90, password: "we")
puts @store2.employees
@store2.employees.each { |i| puts "#{i.first_name}, #{i.password}"}