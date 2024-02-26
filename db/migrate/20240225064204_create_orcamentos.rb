# db/migrate/xxxxxx_create_orcamentos.rb

class CreateOrcamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :orcamentos do |t|
      t.string :nome
      t.string :cnpj
      t.string :descricao
      t.string :codigo
      t.integer :quantidade
      t.decimal :valor, precision: 10, scale: 2

      t.timestamps
    end
  end
end
