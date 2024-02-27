class AddCupomIdToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :products, null: false, foreign_key: true
  end
end
