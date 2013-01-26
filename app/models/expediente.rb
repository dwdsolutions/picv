class Expediente < ActiveRecord::Base
  belongs_to :municipio
  attr_accessible :apellido1, :apellido2, :dui, :edad, :email, :nombre, :sexo, :telefono
end
