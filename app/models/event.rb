class Event < ApplicationRecord
  belongs_to :company
  has_many :questions

  def self.current
    where("start_at <= :today AND end_at >= :today", today: Date.today).first
  end
end
