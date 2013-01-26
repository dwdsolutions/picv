class Municipio < ActiveRecord::Base
  belongs_to :departamento
  attr_accessible :nombre, :departamento_id

  def nombre_completo
  	self.departamento.nombre + " - " + self.nombre 
  end

end
