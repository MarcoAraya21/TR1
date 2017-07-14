class Product < ActiveRecord::Base
  belongs_to :Ptype
  belongs_to :Pcategory
  belongs_to :Status
  belongs_to :Trademark
  has_many :Details
  has_many :recourses
  	validates :Nombre,length:{maximum:30},format:{with: /([0-9 a-z A-Z]{4,30})/,:message=>"de 4 a 30 caracteres"}
	validates :Descripcion,length:{minimum:10 ,:message => "Minimo 10 caracteres"}
	validates :Precio,format:{with: /(\A[0-9]{3,8}\z)/,:message=>"de 3 a 8 caracteres,positivo"}
	validates :Stock,format:{with: /(\A[0-9]{1,3}\z)/,:message=>"de 1 a 3 caracteres,positivo"}
	validates :Imagen,length:{maximum:30},format:{with: /(\A[a-z A-Z 0-9]{1,30})\.(jpg)\z/,:message=>"de 1 a 30 caracteres y debe ser .jpg"}
	validates :Ptype,presence: true
	validates :Pcategory,presence: true
	validates :Status,presence: true
	validates :Trademark,presence: true
	    def Nombre_Categoria
    "#{self.Nombre} - #{self.Pcategory.Nombre}"
  end

end

