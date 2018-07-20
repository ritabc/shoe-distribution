class AddPriceString < ActiveRecord::Migration[5.2]
  def change
    add_column(:brands, :price_string, :string)
  end
end
