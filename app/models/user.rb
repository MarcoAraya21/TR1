class User < ActiveRecord::Base
	belongs_to :usertype
  accepts_nested_attributes_for :usertype
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, format: { :with =>/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , :message => " Invalido"}
  validates :Nombre,presence: {message: "no debe estar en blanco"}
  validates :Apellido,presence: {message: "no debe estar en blanco"}
  validates :Rut, rut: {message: "no es valido"} , uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :Direccion,presence: {message: "no debe estar en blanco"}
  validates :Telefono,format:{ :with =>/\A[9]{1}[0-9]{8}\z/ , :message =>"Invalido"}
  validates :Fonoalt,format:{ :with =>/\A[2|9]{1}[0-9]{8}\z/ , :message =>"Invalido"}


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
