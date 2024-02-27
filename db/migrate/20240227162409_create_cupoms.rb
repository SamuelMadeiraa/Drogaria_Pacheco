class CreateCupoms < ActiveRecord::Migration[7.1]
  def change
    create_table :cupoms do |t|
      t.string :nome
      t.date :validade
      t.float :percentual_desconto

      t.timestamps
    end
  end
end
