class AddPriceToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :price, :decimal
  end
end
