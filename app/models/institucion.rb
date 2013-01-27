class Institucion < ActiveRecord::Base
  attr_accessible :nombre
  validates :nombre, :presence => true
end
