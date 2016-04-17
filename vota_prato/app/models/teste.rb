#coding: utf-8
class Teste < ActiveRecord::Base
	validates_presence_of :nome, message: "Nome não preenchido."
end
