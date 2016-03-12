#coding: utf-8
class Cliente < ActiveRecord::Base
	#Verifica se o campo está vazio.
	validates_presence_of :nome, message: " - deve ser preenchido"

	#Verifica se os dados do campo já existem na tabela.
	validates_uniqueness_of :nome, message: " - nome já cadastrado"

	#Valida a idade para que não seja entre 0 e 100.
	validates_numericality_of :idade, greater_than: 0,
									  less_than: 100,
									  message: " - deve ser um número entre 0 e 100"
end
