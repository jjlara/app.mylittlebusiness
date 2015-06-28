class WelcomeController < ApplicationController
  def index
  end

  def contacto
  	@titulo =" My little business - Contacto"
  	Email.recepcion.deliver 
  end

end
