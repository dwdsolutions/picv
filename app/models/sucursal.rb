class Sucursal < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :institucion
  attr_accessible :direccion, :email, :latitud, :longitud, 
  			:telefono, :municipio_id, :institucion_id

  validates :direccion, :telefono, :institucion_id, :municipio_id, :presence => true
  validates :email, 
  			:email_format => {
  								:message => 'is not looking good',
  								:allow_nil => false,
  								:allow_blank => false}
end
