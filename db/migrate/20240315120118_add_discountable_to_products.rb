class AddDiscountableToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :discountable, :boolean, default: false
  end
end
