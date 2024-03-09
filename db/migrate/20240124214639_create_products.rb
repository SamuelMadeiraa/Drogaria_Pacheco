class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :quantity
      t.references :category, foreign_key: true
      t.references :cupom, foreign_key: true, optional: true
      t.timestamps
    end
  end
end
