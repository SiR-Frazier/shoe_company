class CreateShoesStores < ActiveRecord::Migration[5.1]
  def change
    create_table(:shoes_stores) do |t|
      t.column(:shoes_id, :integer)
      t.column(:store_id, :integer)

      t.timestamps()
    end  
  end
end
