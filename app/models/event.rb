class Event < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets

  def format_date
    self.date_and_time.strftime("%b %d, %Y")
  end

  def format_time
    self.date_and_time.strftime("%l:%M%P")
  end

  def tickets_remaining
    self.capacity - self.tickets.count
  end

end
