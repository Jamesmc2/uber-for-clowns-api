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
end
