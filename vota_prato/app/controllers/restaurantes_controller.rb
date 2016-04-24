class RestaurantesController < ApplicationController
	#Obtem os dados de todos os restaurantes cadastrados.
	def index
		@restaurantes = Restaurante.order :nome
	end

	#Exibe as informaçoes de um restaurante especifico atraves do id do mesmo.
	def show
		@restaurante = Restaurante.find(params[:id])
	end

	#Apaga um restaurante especifico atraves do id do mesmo
	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy

		redirect_to(action: "index")
	end
end
