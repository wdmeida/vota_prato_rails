#coding: utf-8
class Restaurante < ActiveRecord::Base
	#Adiciona os relacionamentos um para muitos e muitos para muitos respectivamente.
	has_many :qualificacoes
	has_and_belongs_to_many :pratos

	#Verifica se os campos foram preenchidos.
	validates_presence_of :nome, message: "deve ser preenchido"
	validates_presence_of :endereco, message: "deve ser preenchido"
	validates_presence_of :especialidade, message: "deve ser preenchido"

	#Verifica se os dados já estão cadastrados no sistema.
	validates_uniqueness_of :nome, message: "nome já cadastrado"
	validates_uniqueness_of :endereco, message: "endereço já cadastrado"

	validate :primeira_letra_deve_ser_maiuscula

	#Verifica se a primeira letra inserida é maiúscula.
=begin
	Não esquecer que ao utilizar modificadores de acesso em Ruby, todos os métodos que serão 
	criados após a declaração do modificador terão este tipo de acesso, diferentemente do Java em 
	que cada método pode ser declarado seu próprio modificador de acesso. Para realizar a mudança, deve
	se declarar o novo modificador antes da declaração de novos métodos.		
=end
	private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome, "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
	end
end
