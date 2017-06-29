class Trademark < ActiveRecord::Base
	has_many :products
	has_many :cproducts
	validates :Nombre,presence: {message: "no debe estar en blanco"}
end
