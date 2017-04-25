class Event < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :users, through: :tickets
  validates_presence_of :category, :name, :date_and_time, :capacity
  validates_numericality_of :capacity, :greater_than => 0

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
