class RepiteController < ApplicationController
  def index
	@contenido = "#{params[:frase]}" if params[:frase]
	@contenido ||= "Podes llamarlo como '/repite/una frase a repetir' y vas a ver" 	
  end

end
