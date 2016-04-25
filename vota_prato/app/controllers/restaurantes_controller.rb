class RestaurantesController < ApplicationController
	#Obtem os dados de todos os restaurantes cadastrados.
	def index
		@restaurantes = Restaurante.order :nome
	end

	#Exibe o formulario para inserçao de um novo restaurante
	def new
		@restaurante = Restaurante.new
	end

	#Persiste as informaçoes de um novo restaurante no banco.
	def create
		@restaurante = Restaurante.new(restaurante_params)
		@restaurante.save
		redirect_to(action: "show", id: @restaurante)
	end

	#Exibe as informaçoes de um restaurante especifico atraves do id do mesmo.
	def show
		@restaurante = Restaurante.find(params[:id])
	end

	def edit
		@restaurante = Restaurante.find params[:id]
	end

	def update
		@restaurante = Restaurante.find params[:id]
		@restaurante.update_attributes restaurante_params

		redirect_to action: "show", id: @restaurante
	end 

	#Apaga um restaurante especifico atraves do id do mesmo
	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy

		redirect_to(action: "index")
	end

	#Efetua a solicitaçao para atribuiçao das propriedades de um restaurante.
	def restaurante_params
		params.require(:restaurante).permit(:nome, :endereco, :especialidade)
	end
end
