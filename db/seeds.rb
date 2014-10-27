# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'faker'

5.times do |i|
  acct = Account.create(name: Faker::Internet.user_name)
  acct.domains.create(hostname: Faker::Internet.domain_name, origin_ip_address:  Faker::Internet.ip_v4_address)
end