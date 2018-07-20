class CreateBrandsStores < ActiveRecord::Migration[5.2]
  def change
    create_table(:brands_stores, id: false) do |t|
      t.belongs_to(:brands, index: true)
      t.belongs_to(:stores, index: true)
    end
  end
end
