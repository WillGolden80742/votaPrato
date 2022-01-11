class Qualificacao < ApplicationRecord	
  	belongs_to :cliente
  	belongs_to :restaurante
  	belongs_to :prato
	validates_presence_of :nota, :message => " - deve ser preenchido"
	validates_presence_of :valor_gasto, :message => " - deve ser preenchido"
	validates_numericality_of :nota,
	:greater_than_or_equal_to => 0,
	:less_than_or_equal_to => 5,
	:message => " - deve ser um número entre 0 e 5"	
	validates :comentario,
  	length: { 
	    maximum: 500,
	    too_long: "dever ter tamanho máximo de 500 caracteres"
  	}	
end
