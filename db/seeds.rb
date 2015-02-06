# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
CSV.foreach("/Users/alynch/Downloads/fng/people.csv") do |row|
  name = row[4]
  email = row[2]
  ssn = row[5]
  cc = row[3]
  password = row[1]
  User.create(name: name, email: email, ssn: ssn, cc: cc, password: password)
end

User.first.destroy # get rid of header row
User.create(name: "Alex", email: "alex.lynch@guidepointsecurity.com", ssn: "123-12-1234", cc: "1111111", password: "cool")