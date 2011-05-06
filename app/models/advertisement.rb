class Advertisement < ActiveRecord::Base

  # El Aviso pertenece a un usuario, creo la asociacion
  belongs_to :user
end
