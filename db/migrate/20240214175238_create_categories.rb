class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :imagecategory
      t.references :product, null: true, foreign_key: true

      t.timestamps
    end
  end
end
