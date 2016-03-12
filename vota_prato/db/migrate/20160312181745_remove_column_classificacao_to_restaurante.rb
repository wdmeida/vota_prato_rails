class RemoveColumnClassificacaoToRestaurante < ActiveRecord::Migration
  def change
    remove_column :restaurantes, :classificacao, :string
  end
end
