class AddImageCategoryToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :image_category, :string
  end
end