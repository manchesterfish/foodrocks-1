class Dish < ActiveRecord::Base
    has_many :orders, inverse_of: :dish
    validates :dish_name, :price, :stock, :restaurant, :ImageURL, presence: true
end
