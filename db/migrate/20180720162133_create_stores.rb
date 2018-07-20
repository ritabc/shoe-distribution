class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table(:stores) do |t|
      t.column(:store_name, :string)
    end
  end
end
