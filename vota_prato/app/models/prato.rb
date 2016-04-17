#coding: utf-8
class Prato < ActiveRecord::Base
	
	has_and_belong_to_many :restaurantes
	has_one :receita

	validate :validate_presence_of_more_than_one_restaurante

	#Verifica se o campo não está vazio.
	validates_presence_of :nome, message: " - deve ser preenchido"
	
	#Verifica se os dados do campo já estão cadastrados na tabela.
	validates_uniqueness_of :nome, message: " - nome já cadastrado"

	def validate_presence_of_more_than_one_restaurante
		errors.add("restaurantes", "deve haver ao menos um restaurante") if restaurantes.empty?
	end
end
