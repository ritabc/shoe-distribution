class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table(:brands) do |t|
      t.column(:brand_name, :string)
      t.column(:price, :float)
    end
  end
end
