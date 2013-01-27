class UsuariosController < ApplicationController

	load_and_authorize_resource
	skip_authorize_resource :only => [:new, :create]

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
