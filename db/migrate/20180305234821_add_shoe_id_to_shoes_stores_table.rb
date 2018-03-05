class AddShoeIdToShoesStoresTable < ActiveRecord::Migration[5.1]
  def change
    add_column(:shoes_stores, :shoe_id, :integer)
  end
end
