class AddDescontoDisponivelToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :desconto_disponivel, :boolean
  end
end
