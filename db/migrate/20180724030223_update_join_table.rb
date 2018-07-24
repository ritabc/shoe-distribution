class UpdateJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table(:brands_stores)
    create_table(:brands_stores, id: false) do |t|
      t.belongs_to(:brand, index: true)
      t.belongs_to(:store, index: true)
    end
  end
end
