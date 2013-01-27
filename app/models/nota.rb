class Nota < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :denuncia
  attr_accessible :descripcion
end
