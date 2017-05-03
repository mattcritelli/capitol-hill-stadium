# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   game = Event.create(category: "Sports",
#                        name: "New York Rangers vs Colorado Avalanche",
#                        date_and_time: DateTime.new(2017,05,01,19,30),
#                        capacity: 100)

#Create sporting events
# 20.times do
#   Event.create(category: Faker::Team.sport.capitalize,
#                 name: Faker::Team.name.upcase + " vs. " + Faker::Team.name.upcase,
#                 date_and_time: Faker::Time.forward(60, :evening),
#                 capacity: 100)
# end

#Create music events
# 20.times do
#   Event.create(category: "Music",
#                 name: Faker::RockBand.name,
#                 date_and_time: Faker::Time.forward(60, :evening),
#                 capacity: 100)
# end


#Sell out first event to check model logic
# 100.times do
  # Ticket.create(
  #   event_id: 1,
  #   user_id: 2,
  #   price: 50,
  #   seat: "GA")
# end
