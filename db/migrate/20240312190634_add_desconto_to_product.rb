class AddDescontoToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :desconto, :boolean
  end
end
