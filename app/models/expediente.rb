class Expediente < ActiveRecord::Base
  belongs_to :municipio
  attr_accessible :apellido1, :apellido2, :documento_identidad, :edad, :email, :nombre, 
  				  :sexo, :telefono, :zona, :ocupacion, :lugar_trabajo, :telefono_trabajo,
  				  :municipio_trabajo_id, :nivel_educativo, :estado_familiar, :sostenimiento_familiar,
  				  :discapacidad_fisica, :discapacidad_mental
end