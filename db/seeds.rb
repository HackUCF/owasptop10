# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
CSV.foreach(Rails.root.to_s()+"/people.csv") do |row|
  name = row[4]
  email = row[2]
  ssn = row[5]
  cc = row[3]
  password = row[1]
  FakeUser.create(name: name, email: email, ssn: ssn, cc: cc, password: password)
end

FakeUser.first.destroy # get rid of header row

require 'securerandom'

Password.create(username: "Alice", website: "gmail.com", pw: SecureRandom.hex)
Password.create(username: "Bob",website: "yahoo.com", pw: SecureRandom.hex)
Password.create(username: "Alice",website: "reddit.com", pw: SecureRandom.hex)
Password.create(username: "Bob",website: "somethingawful.com", pw: SecureRandom.hex)
Password.create(username: "Alice",website: "guidepointsecurity.com", pw: SecureRandom.hex)
Password.create(username: "Bob",website: "m42club.com", pw: SecureRandom.hex)
