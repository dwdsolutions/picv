class SmsController < ApplicationController
	def index
		@body = params[:Body]
		@from = params[:From]
		@message = nil

		if @body.upcase == "AYUDA"
			@message = "Por favor, envianos tu informacion con el siguiente formato: Nombre, Numero de DUI, Sexo"
		elsif @body.split(', ').length == 3
			sexo = {
				'masculino' => "masculino",
				'femenino' => "femenino",
				'hombre' => "masculino",
				'mujer' => "femenino",
				'm' => "masculino",
				'f' => "femenino",
			}
			datos_usuario = @body.split(', ')
			expediente = Expediente.new
			nombre = datos_usuario[0].split
			if nombre.length == 4
				expediente.nombre = nombre[0].concat(" ").concat(nombre[1])
				expediente.apellido1 = nombre[2]
				expediente.apellido2 = nombre[3]
			elsif nombre.length == 3
				expediente.nombre = nombre[0].concat(" ").concat(nombre[1])
				expediente.apellido1 = nombre[2]
			else
				expediente.nombre = nombre[0]
				expediente.apellido1 = nombre[1]
			end
			expediente.telefono = @from
			expediente.documento_identidad = datos_usuario[1]
			expediente.sexo = sexo[datos_usuario[2].downcase]
			expediente.save()
			@message = "Tu denuncia ha sido iniciada. Por favor dirigete a el hospital o Fosalud mas cercano."
		else
			@message = "Comando no reconocido!. Comandos reconocidos: AYUDA"
		end

		render 'index.xml.rb', :content_type => 'text/xml'
	end
end