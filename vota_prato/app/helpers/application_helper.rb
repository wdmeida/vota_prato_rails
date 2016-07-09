module ApplicationHelper
	def valor_formatado(number)
		number_to_currency number,
			unit: "R$",
			separator: ",",
			delimiter: "."
	end

	#Rederiza um partial contendo o form para criaçao de novos comentarios.
	def novo_comentario(comentavel)
		render partial: "comentarios/novo_comentario",
				locals: {comentavel: comentavel}
	end
end
