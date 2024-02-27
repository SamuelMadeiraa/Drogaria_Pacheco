class CreateCupoms < ActiveRecord::Migration[7.1]
  def change
    create_table :cupoms do |t|
      t.string :name
      t.date :validade
      t.integer :porcetual_de_desconto

      t.timestamps
    end
  end
end
