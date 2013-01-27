class Denuncia < ActiveRecord::Base

  TIPOS = ["Violencia Intrafamiliar", "Maltrato a la ninez", "Agresion Sexual"]
  ZONAS = ["Urbana", "Rural", "Marginal"]
  AMBITOS = ["Publico", "Privado"]
  NIVELES_EDUCATIVOS = ["Primaria", "Secundaria", "Bachillerato",
                        "Tecnico","Universitario","Ninguno"]
  RELACIONES = ["Padre", "Madre", "Padrastro",
                "Madrastra","Abuelo","Abuela",
                "Hermano","Hermana","Esposo",
                "Esposa","Ex-Esposo","Ex-Esposa",
                "Amigo","Amiga","Tio","Tia","Desconocido"]
  CONDICIONES = ["Violencia Intrafamiliar", "Maltrato a la ninez", "Agresion Sexual"]
  SEXOS = ["Masculino", "Femenino"]

  has_many :archivos
  has_many :notas
  accepts_nested_attributes_for :archivos, :allow_destroy => true

  belongs_to :usuario
  belongs_to :expediente
  belongs_to :municipio_hechos, :foreign_key => "municipios_hechos_id"
  belongs_to :municipio_agresor
  belongs_to :municipio_trabajo_agresor
  attr_accessible :ambito, :antecendente_criminal_agresor, :condicion_agresor, :descripcion, 
  :direccion_agresor, :direccion_hechos, :direccion_trabajo_agresor, 
  :edad_agresor, :fecha_agresion, :nivel_educativo_agresor, :nombre_agresor, 
  :ocupacion_agresor, :relacion_agresor_victima, :sexo_agresor, :telefono_agresor, 
  :tipo, :tipo_arma_agresor, :trabajo_agresor, :zona_agresor, :zona_hechos,
  :municipio_hechos_id, :municipio_agresor_id,:municipio_trabajo_agresor_id, :archivos_attributes, :expediente_id, :municipio_hechos

   validates :usuario_id, :expediente_id, :municipio_hechos_id, :presence => true
   validates :ambito, :direccion_hechos, :descripcion, :presence => true
   validates :fecha_agresion, :sexo_agresor, :presence => true
   validates :tipo, :presence => true
   validates :zona_hechos,:presence => true
end
