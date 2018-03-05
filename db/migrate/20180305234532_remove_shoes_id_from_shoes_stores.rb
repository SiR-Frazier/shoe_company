class RemoveShoesIdFromShoesStores < ActiveRecord::Migration[5.1]
  def change
    remove_column(:shoes_stores, :shoes_id, :integer)
  end
end
