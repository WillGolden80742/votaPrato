class Cliente < ApplicationRecord
	validates_numericality_of :idade,
	:greater_than => 0,
	:less_than => 100,
	:message => " deve ser um número entre 0 e 100"	
  	has_many :qualificacoes	
  	belongs_to :cliente
end
