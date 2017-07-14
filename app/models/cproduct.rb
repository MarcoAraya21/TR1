class Cproduct < ActiveRecord::Base
  belongs_to :User
  belongs_to :Pcategory
  belongs_to :Status
  belongs_to :Trademark
  has_many :Reparations
  	validates :Nombre,length:{maximum:30},format:{with: /([0-9 a-z A-Z]{4,30})/,:message=>"de 4 a 30 caracteres"}
	validates :Descripcion,length:{minimum:10 ,:message => "Minimo 10 caracteres"}
	validates :Imagen,length:{maximum:30},format:{with: /(\A[a-z A-Z 0-9]{1,30})\.(jpg)\z/,:message=>"de 1 a 30 caracteres y debe ser .jpg"}
	validates :User,presence: true
	validates :Pcategory,presence: true
	validates :Status,presence: true
	validates :Trademark,presence: true
		def NombreC_NombreP
    "#{self.Nombre} - #{self.User.Nombre}"
  end
end
