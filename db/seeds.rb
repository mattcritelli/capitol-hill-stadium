# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   game = Event.create(category: "Sports",
#                        name: "New York Rangers vs Colorado Avalanche",
#                        date_and_time: DateTime.new(2017,05,01,19,30),
#                        capacity: 100)


5.times do
  Event.create(category: Faker::Team.sport.capitalize,
                name: Faker::Team.name.upcase + " vs. " + Faker::Team.name.upcase,
                date_and_time: Faker::Time.forward(60, :evening),
                capacity: 100)
end

# User.create(admin: true,
#             first_name: Faker::Name.first_name,
#             last_name: Faker::Name.last_name,
#             email: "admin@email.com",
#             password_digest: "password")

# 2.times do
#   User.create(admin: false,
#               first_name: Faker::Name.first_name,
#               last_name: Faker::Name.last_name,
#               email: Faker::Internet.email,
#               password_digest: "password")
# end

# 50.times do
#   Ticket.create(event_id: (1..5).to_a.sample,
#                 user_id: [2,3].sample,
#                 price: [10,20].sample,
#                 seat: (1..100).to_a.sample)
# end
