class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # Ahora vienen mis atributos extra 
  # Uso accessible para que pueda hacer batchupdate (si hubiese hecho attr_accessor no me sirve)
  # attr_accessor ya me lo crea ActiveRecord cuando traigo las cosas de la BD.
  # Leer la API de rails
  attr_accessible :first_name, :last_name

  #validates_presence_of :first_name
  validates :first_name, :presence => true
  
  # Creo referencia a todos los avisos de este usuario
  has_many :advertisements
end
