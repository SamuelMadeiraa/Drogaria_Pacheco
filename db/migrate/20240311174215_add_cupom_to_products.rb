class AddCupomToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :cupom, :string
  end
end
