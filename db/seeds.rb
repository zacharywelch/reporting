10.times do |i|
  User.create(name: Faker::Name.name, email: Faker::Internet.email, rank: i + 1)
end
