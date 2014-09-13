class AddRestaurantUrlToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :restaurantURL, :string
  end
end
