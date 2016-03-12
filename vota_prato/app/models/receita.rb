#coding: utf-8
class Receita < ActiveRecord::Base
	#Verifica se o campo está vazio.
	validates_presence_of :conteudo, message: " - deve ser preenchido"
end
