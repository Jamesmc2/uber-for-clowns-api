class Clown < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders

  def ratings
    ratings = []
    orders.each do |order|
      ratings << order.rating
    end
    return ratings
  end

  def avg_rating
    index = 0.0
    total = 0.0
    orders.each do |order|
      total += order.rating
      index += 1
    end
    return total / index
  end
end
