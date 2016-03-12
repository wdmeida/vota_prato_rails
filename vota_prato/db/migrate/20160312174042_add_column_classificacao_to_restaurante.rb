class AddColumnClassificacaoToRestaurante < ActiveRecord::Migration
  def change
    add_column :restaurantes, :classificacao, :string, limit: 10
  end
end
