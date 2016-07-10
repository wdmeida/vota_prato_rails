require 'test/test_helper'

class RestaurantesControllerTest < ActionController::TestCase
  fixtures :restaurantes

  def test_procura_restaurante
  	get :busca, :nome => "Fasano"
  	assert_not_nil assign(:restaurante)
  	assert_equal restaurantes(:fasano).nome, assign(:restaurante).nome
  	assert_redirected_to :action => "show"
  end

  def test_procura_restaurante_nao_encontra
  	get :busca, :nome => "Botequin"
  	assert_redirected_to :action => "index"
  	assert_equal "Restaurante nao encontrado.", flash[:notice]
  end
end
