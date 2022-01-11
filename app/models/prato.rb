class Prato < ApplicationRecord
  	belongs_to :restaurante
	has_many :qualificacaos
end
