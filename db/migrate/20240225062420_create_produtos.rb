# db/migrate/xxxxxx_create_produtos.rb

class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :codigo
      t.string :descricao
      t.decimal :valor_unitario, precision: 10, scale: 2

      t.timestamps
    end
  end
end
