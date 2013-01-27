class SmsController < ApplicationController
	def index
		@body = params[:Body]
		@from = params[:From]
		@message = nil

		if @body.upcase == "AYUDA"
			@message = "Por favor, envianos tu informacion con el siguiente formato: Nombre, Numero de DUI, Sexo"
		else
			@message = "Comando no reconocido!. Comandos reconocidos: AYUDA"
		end

		render 'index.xml.rb', :content_type => 'text/xml'
	end
end