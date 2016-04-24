class RestaurantesController < ApplicationController
	def index
		#Obtem os dados de todos os restaurantes cadastrados.
		@restaurantes = Restaurante.order :nome
	end
end
