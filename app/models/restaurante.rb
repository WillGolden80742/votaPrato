class Restaurante < ApplicationRecord
	has_many :qualificacaos
	has_many :pratos
	validates :nome,
  	length: { 
	    maximum: 80,
	    too_long: "dever ter tamanho máximo de 80 caracteres"
  	}
	validates :especialidade,
  	length: { 
	    maximum: 40,
	    too_long: "dever ter tamanho máximo de 40 caracteres"
  	}  	
	validates_presence_of :nome, :message => "não poder ser vazio"
	validates_presence_of :especialidade, :message => "não poder ser vazio"
	validate :primeira_letra_deve_ser_maiuscula
    private
    def primeira_letra_deve_ser_maiuscula
    	errors.add("nome", "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
    end 	
end 
