class AddCategoryToProdutos < ActiveRecord::Migration[7.1]
  def change
    add_column :produtos, :category, :string
  end
end
