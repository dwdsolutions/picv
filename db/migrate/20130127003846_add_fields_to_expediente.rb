class AddFieldsToExpediente < ActiveRecord::Migration
  def change
    add_column :expedientes, :zona, :string
    add_column :expedientes, :ocupacion, :string
    add_column :expedientes, :lugar_trabajo, :string
    add_column :expedientes, :telefono_trabajo, :string
    add_column :expedientes, :direccion_trabajo, :string
    add_column :expedientes, :municipio_trabajo_id, :integer
    add_column :expedientes, :nivel_educativo, :string
    add_column :expedientes, :estado_familiar, :string
    add_column :expedientes, :sostenimiento_familiar, :string
    add_column :expedientes, :discapacidad_fisica, :string
    add_column :expedientes, :discapacidad_mental, :string
  end
end
