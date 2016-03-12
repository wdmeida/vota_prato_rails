#coding: utf-8
class Prato < ActiveRecord::Base
	#Verifica se o campo não está vazio.
	validates_presence_of :nome, message: " - deve ser preenchido"
	
	#Verifica se os dados do campo já estão cadastrados na tabela.
	validates_uniqueness_of :nome, message: " - nome já cadastrado"
end
