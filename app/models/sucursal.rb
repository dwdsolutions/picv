class Sucursal < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :institucion
  attr_accessible :direccion, :email, :latitud, :longitud, :telefono
end
