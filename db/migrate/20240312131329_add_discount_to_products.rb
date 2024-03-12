class AddDiscountToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :discount, :decimal
  end
end
