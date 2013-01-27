class UsuariosController < ApplicationController

	def new
    	@usuario = Usuario.new
    	@instituciones = Institucion.all
  	end

  	def create
    	@usuario = Usuario.new(params[:usuario])
    	@instituciones = Institucion.all
	    if @usuario.save
	      redirect_to root_url, :notice => "Signed up!"
	    else
	      render "new"
	    end
  	end

end
