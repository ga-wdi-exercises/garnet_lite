require 'pg'
require 'pry'
require 'active_record'
require 'faker'

require_relative 'connection'
require_relative '../models/instructor'
require_relative '../models/student'

Instructor.destroy_all
Student.destroy_all

6.times do
  Instructor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(75))
end

Instructor.all.each do |instructor|
  instructor.students.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(75), job: Faker::Company.profession)
  instructor.students.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(75), job: Faker::Company.profession)
  instructor.students.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(75), job: Faker::Company.profession)
  instructor.students.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(75), job: Faker::Company.profession)
end
