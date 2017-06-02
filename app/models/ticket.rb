class Ticket < ApplicationRecord
  belongs_to :event
  belongs_to :user

  def generate_ticket(quantity)
    quantity.times do
      Ticket
    end
  end
end
