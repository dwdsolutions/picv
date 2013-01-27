class Departamento < ActiveRecord::Base
  attr_accessible :nombre
  has_many:municipios
  validates :nombre, :presence => true
end
