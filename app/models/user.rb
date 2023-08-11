class User < ApplicationRecord
  has_many :orders
  has_many :clowns, through: :orders
end
