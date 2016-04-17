class Qualificacao < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :restaurante

	#Verifica se os campos foram preenchidos.
	validates_presence_of :nota, message: " - deve ser preenchido"
	validates_presence_of :valor_gasto, message: " - deve ser preenchido"

	#Verifica se o valor inserido está entre 0 e 10, inclusive.
	validates_numericality_of :nota, greater_than_or_equal_to: 0,
							   		 less_than_or_equal_to: 10,
							   		 message: " - deve ser um número entre 0 e 10"

	#Verifica se o valor inserido é maior que 0.
	validates_numericality_of :valor_gasto, greater_than: 0,
	
	validates_presence_of :cliente_id, :restaurante_id
	validates_associated :cliente, :restaurante									    message: " - deve ser um número maior que 0"
end
