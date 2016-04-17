class CreateTestes < ActiveRecord::Migration
  def change
    create_table :testes do |t|
      t.string :nome
      t.string :endereco
      t.timestamps
    end
  end
end
